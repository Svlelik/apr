import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:toastification/toastification.dart';

part 'profile_info_bloc.freezed.dart';
part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends BaseBloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc({
    required ProfileRepository repository,
    required AuthManager<AuthenticatedUser> manager,
    required DialogService dialogService,
  })  : _repository = repository,
        _manager = manager,
        _dialogService = dialogService,
        super(const _Initial()) {
    on<_Started>(_init);
    on<_SignOut>(_signOut);
    on<_GetDicts>(_getDicts);
    on<_UpdateProfile>(_updateProfile);
    on<_EditForm>(_editForm);
  }

  final ProfileRepository _repository;

  final DialogService _dialogService;

  final AuthManager<AuthenticatedUser> _manager;

  final List<StreamSubscription<dynamic>> _subscribers = [];

  final phoneRedExp = RegExp(r'[^\d+]');
  final birthdayDateFormat = 'yyyy-MM-dd';

  Future<void> _init(_Started event, Emitter<ProfileInfoState> emit) async {
    await _getProfile(event, emit);
  }

  @override
  Future<void> close() async {
    for (final subscribe in _subscribers) {
      await subscribe.cancel();
    }
    await super.close();
  }

  bool _isUnderAge(DateTime? date) {
    if (date == null) {
      return false;
    }

    return (DateTime(DateTime.now().year, date.month, date.day)
                .isAfter(DateTime.now())
            ? DateTime.now().year - date.year - 1
            : DateTime.now().year - date.year) <
        18;
  }

  Future<void> _getProfile(event, Emitter<ProfileInfoState> emit) async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    emit(state.copyWith(profile: _manager.user.value));

    if (state.infoForm == null) {
      final infoForm = ProfileInfoForm();

      await infoForm.init(_manager.user.value);

      emit(
        state.copyWith(
          infoForm: infoForm,
          status: StateStatus.ready,
          formIsEdit: !state.profile.status.isMainFormFilled,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: StateStatus.ready,
          formIsEdit: !state.profile.status.isMainFormFilled,
        ),
      );
    }

    if (state.infoForm == null) {
      return;
    }

    final regionController =
        state.infoForm!.form.control(ProfileInfoForm.region);
    final adultController = state.infoForm!.form.control(ProfileInfoForm.adult);
    final cityController = state.infoForm!.form.control(ProfileInfoForm.city);
    final emailController = state.infoForm!.form.control(ProfileInfoForm.email);
    final phoneController = state.infoForm!.form.control(ProfileInfoForm.phone);
    final birthdayController =
        state.infoForm!.form.control(ProfileInfoForm.birthday);

    _subscribers
      ..add(
        birthdayController.valueChanges.listen((event) {
          if (event != null) {
            if (_isUnderAge(event as DateTime)) {
              adultController
                ..markAsEnabled()
                ..patchValue(false);
            } else {
              adultController
                ..patchValue(true)
                ..markAsDisabled();
            }
          }
        }),
      )
      ..add(
        cityController.valueChanges.listen(
          (event) {
            if (event != null) {
              final city = state.cities
                  .firstWhereOrNull((CityDTO element) => element.city == event);

              if (city != null) {
                state.infoForm!.toggleLocalityCity(city: city.city);
                regionController.patchValue(city.region?.region);
              }
            } else {
              regionController
                ..patchValue(null)
                ..markAsDisabled();
            }
          },
        ),
      )
      ..add(
        emailController.valueChanges.listen((event) {
          if (_manager.user.value.email != event) {
            phoneController.markAsDisabled();
          } else {
            state.infoForm?.form.control(ProfileInfoForm.phone).markAsEnabled();
          }
        }),
      )
      ..add(
        phoneController.valueChanges.listen((event) {
          if (_manager.user.value.phone !=
              event.toString().replaceAll(phoneRedExp, '')) {
            emailController.markAsDisabled();
          } else {
            emailController.markAsEnabled();
          }
        }),
      );
  }

  void _editForm(_EditForm event, Emitter<ProfileInfoState> emit) {
    emit(state.copyWith(formIsEdit: event.isEdited));
  }

  Future<void> _signOut(_SignOut event, Emitter<ProfileInfoState> emit) async {
    await _manager.signOut();
  }

  Future<void> _getDicts(
    _GetDicts event,
    Emitter<ProfileInfoState> emit,
  ) async {
    final dictsResult = await _repository.getDicts();

    dictsResult.fold((l) => null, (r) {
      emit(
        state.copyWith(
          cities: r.cities,
          sexes: r.sexes,
          regions: r.regions,
        ),
      );
    });
  }

  Future<bool> _checkContacts(
    Map<String, dynamic> fields,
    Emitter<ProfileInfoState> emit,
  ) async {
    bool isSuccess = true;
    if (fields.containsKey('email')) {
      final email = fields['email'].toString();
      await _dialogService
          .showDialog<bool>(
        useSafeArea: false,
        barrierDismissible: false,
        child: ProfileConfirmWidget(email: email),
      )
          .then((isUpdated) {
        if (isUpdated ?? false) {
          _showSnackbar(ProfileI18n.emailSavedNotification);
          emit(
            state.copyWith(
              profile: state.profile.copyWith(email: email),
            ),
          );
        } else {
          isSuccess = false;
        }
      });
    }
    if (fields.containsKey('phone')) {
      final prone = fields['phone'].toString().replaceAll(phoneRedExp, '');
      await _dialogService
          .showDialog<bool>(
        useSafeArea: false,
        barrierDismissible: false,
        child: ProfileConfirmWidget(phone: prone),
      )
          .then((isUpdated) {
        if (isUpdated ?? false) {
          _showSnackbar(ProfileI18n.phoneSavedNotification);
          emit(
            state.copyWith(
              profile: state.profile.copyWith(phone: prone),
            ),
          );
        } else {
          isSuccess = false;
        }
      });
    }
    return isSuccess;
  }

  void _showSnackbar(String text) {
    toastification.showCustom(
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomRight,
      builder: (context, item) => Padding(
        padding: const EdgeInsets.only(bottom: Insets.m, right: Insets.xl),
        child: UiAprSnackbar(
          type: UiAprSnackbarType.success,
          onPressedClose: () {
            toastification.dismiss(item);
          },
          text: text,
        ),
      ),
    );
  }

  Future<void> _updateProfile(
    _UpdateProfile event,
    Emitter<ProfileInfoState> emit,
  ) async {
    state.infoForm?.form.markAllAsTouched();

    if (state.infoForm?.form.valid ?? false) {
      final values = state.infoForm?.getDifferences(state.profile);
      final confirmationFieldsList = ['phone', 'email'];
      final Map<String, dynamic> confirmationFields = {};
      final Map<String, dynamic> noConfirmationFields = {};

      values?.forEach((key, value) {
        if (confirmationFieldsList.contains(key)) {
          confirmationFields.addAll({key: value});
        } else {
          noConfirmationFields.addAll({key: value});
        }
      });

      if (confirmationFields.isNotEmpty) {
        final isUpdated = await _checkContacts(confirmationFields, emit);
        if (!isUpdated) {
          return;
        }
      }

      final cityModel = state.cities.firstWhereOrNull(
        (e) => e.city == noConfirmationFields[ProfileInfoForm.city],
      );

      if (noConfirmationFields.isNotEmpty) {
        final result = await _repository.updateProfile({
          ...noConfirmationFields,
          if (noConfirmationFields[ProfileInfoForm.birthday] != null)
            ProfileInfoForm.birthday: DateFormat(birthdayDateFormat).format(
              noConfirmationFields[ProfileInfoForm.birthday] as DateTime,
            ),
          ProfileInfoForm.city: cityModel?.id,
          ProfileInfoForm.locality: cityModel == null
              ? noConfirmationFields[ProfileInfoForm.city]
              : null,
          ProfileInfoForm.region: state.regions
              .firstWhereOrNull(
                (e) =>
                    e.region ==
                    noConfirmationFields[ProfileInfoForm.region] as String,
              )
              ?.id,
        });

        await result.fold((l) {
          emit(state.copyWith(error: l.message));
        }, (r) async {
          emit(state.copyWith(error: null));
          emit(state.copyWith(profile: r));
          _manager.updateUser(r);
        });
      }

      if (state.error == null) {
        emit(
          state.copyWith(
            status: StateStatus.finish,
            formIsEdit: false,
          ),
        );
      }
    }
  }
}
