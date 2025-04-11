import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoadingState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) {
        return AuthInjection.sl<LoginBloc>()..add(const LoginEvent.started());
      },
      child: Scaffold(
        appBar: const UiAppBar(),
        backgroundColor: context.color.constant.white,
        body: SafeArea(
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {
                  loadingOverlay.hide();
                },
                failure: (error) {
                  loadingOverlay.hide();

                  if (error is HttpFailure &&
                      error.authError == AuthError.blocked) {
                    context.go(
                      AuthRoutePath.accountBlocked,
                      extra: AccountBlockedPageExtraParams(
                        phone:
                            context.read<LoginBloc>().form?.phoneControl.value,
                      ),
                    );
                  }
                },
                loading: () {
                  loadingOverlay.show(context);
                },
                success: () {
                  loadingOverlay.hide();
                  context.go(AuthRoutePath.otpFullPath);
                },
              );
            },
            builder: (context, state) {
              if (context.read<LoginBloc>().form?.form == null) {
                return const SizedBox();
              }

              return UiLoginForm(
                form: context.read<LoginBloc>().form!.form,
                message: state.maybeWhen(
                  orElse: () => null,
                  failure: (_) => _.message,
                ),
                onSubmitForm: () {
                  context.read<LoginBloc>().add(const LoginEvent.signIn());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
