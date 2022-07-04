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
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: LoginScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: HomeScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 200,
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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(HomeRoute.name, path: '/home'),
        RouteConfig(MenuRoute.name, path: '/menu'),
        RouteConfig(ProfileRoute.name, path: '/profile')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(LoginRoute.name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key})
      : super(HomeRoute.name, path: '/home', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
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
