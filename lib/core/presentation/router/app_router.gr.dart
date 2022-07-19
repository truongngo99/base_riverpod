// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: SplashScreen(key: args.key));
    },
    LoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const LoginPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MenuRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MenuScreen());
    },
    ProfileRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProfileScreen(),
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EditSkillRoute.name: (routeData) {
      final args = routeData.argsAs<EditSkillRouteArgs>(
          orElse: () => const EditSkillRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: EditSkillScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    EditActivitiesRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const EditActivitiesScreen(),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    EditHomeRoute.name: (routeData) {
      final args = routeData.argsAs<EditHomeRouteArgs>(
          orElse: () => const EditHomeRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: EditHomeScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(MenuRoute.name, path: '/menu'),
        RouteConfig(ProfileRoute.name, path: '/profile'),
        RouteConfig(EditSkillRoute.name, path: '/skill/edit'),
        RouteConfig(EditActivitiesRoute.name, path: '/activities/edit'),
        RouteConfig(EditHomeRoute.name, path: '/home/edit')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: '/menu');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [EditSkillScreen]
class EditSkillRoute extends PageRouteInfo<EditSkillRouteArgs> {
  EditSkillRoute({Key? key})
      : super(EditSkillRoute.name,
            path: '/skill/edit', args: EditSkillRouteArgs(key: key));

  static const String name = 'EditSkillRoute';
}

class EditSkillRouteArgs {
  const EditSkillRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditSkillRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EditActivitiesScreen]
class EditActivitiesRoute extends PageRouteInfo<void> {
  const EditActivitiesRoute()
      : super(EditActivitiesRoute.name, path: '/activities/edit');

  static const String name = 'EditActivitiesRoute';
}

/// generated route for
/// [EditHomeScreen]
class EditHomeRoute extends PageRouteInfo<EditHomeRouteArgs> {
  EditHomeRoute({Key? key})
      : super(EditHomeRoute.name,
            path: '/home/edit', args: EditHomeRouteArgs(key: key));

  static const String name = 'EditHomeRoute';
}

class EditHomeRouteArgs {
  const EditHomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditHomeRouteArgs{key: $key}';
  }
}
