part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoState with _$ProfileInfoState {
  const factory ProfileInfoState.initial({
    @Default(StateStatus.pure) StateStatus status,
    @Default(true) bool formIsEdit,
    String? error,
    @Default(AuthenticatedUser.empty) AuthenticatedUser profile,
    @Default([]) List<CityDTO> cities,
    @Default([]) List<SexDTO> sexes,
    @Default([]) List<RegionDTO> regions,
    ProfileInfoForm? infoForm,
  }) = _Initial;

  const ProfileInfoState._();

  Map<int, String> get citiesMap =>
      {for (final element in cities) element.id: element.city};

  Map<int, String> get sexesMap =>
      {for (final element in sexes) element.id: element.sex};

  Map<int, String> get regionsMap =>
      {for (final element in regions) element.id: element.region};
}
