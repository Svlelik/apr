import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/main/_main.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:super_banners/super_banners.dart';

class MainPage extends StatefulWidget {
  const MainPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int get currentIndex => widget.navigationShell.currentIndex;

  @override
  void initState() {
    super.initState();

    addWatermark(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.I<MainCubit>()..init()),
        BlocProvider(
          create: (context) =>
              GetIt.I<UserPointsBloc>()..add(const UserPointsEvent.fetch()),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.I<ProfileBloc>()..add(const ProfileEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.I<ProjectsBloc>()..add(const ProjectsEvent.started()),
        ),
      ],
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return UiEither(
            condition: state.status.isFetchingSuccess,
            onFalse: const Scaffold(body: UiLoader()),
            onTrue: Scaffold(
              body: Stack(
                children: [
                  widget.navigationShell,
                  Visibility(
                    visible: state.isDemo,
                    child: CornerBanner(
                      bannerColor: Colors.cyan,
                      shadowColor: Colors.black.withOpacity(0.8),
                      elevation: 5,
                      child: const Text('Demo'),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: widget.navigationShell.currentIndex,
                onTap: (index) => widget.navigationShell.goBranch(
                  index,
                  initialLocation: index == widget.navigationShell.currentIndex,
                ),
                items: [
                  BottomNavigationBarItem(
                    label: MainI18n.homeBottomMenuItem,
                    icon: Assets.icons.icons24.home.svg(
                      colorFilter: ColorFilter.mode(
                        (currentIndex == 0
                                ? context.theme.bottomNavigationBarTheme
                                    .selectedItemColor
                                : context.theme.bottomNavigationBarTheme
                                    .unselectedItemColor) ??
                            context.color.surface.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: MainI18n.menuBottomMenuItem,
                    icon: Assets.icons.icons24.menu.svg(
                      colorFilter: ColorFilter.mode(
                        (currentIndex == 1
                                ? context.theme.bottomNavigationBarTheme
                                    .selectedItemColor
                                : context.theme.bottomNavigationBarTheme
                                    .unselectedItemColor) ??
                            context.color.surface.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: MainI18n.profileBottomMenuItem,
                    icon: Assets.icons.icons24.user.svg(
                      colorFilter: ColorFilter.mode(
                        (currentIndex == 2
                                ? context.theme.bottomNavigationBarTheme
                                    .selectedItemColor
                                : context.theme.bottomNavigationBarTheme
                                    .unselectedItemColor) ??
                            context.color.surface.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: MainI18n.supportBottomMenuItem,
                    icon: Assets.icons.icons24.headset.svg(
                      colorFilter: ColorFilter.mode(
                        (currentIndex == 3
                                ? context.theme.bottomNavigationBarTheme
                                    .selectedItemColor
                                : context.theme.bottomNavigationBarTheme
                                    .unselectedItemColor) ??
                            context.color.surface.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
