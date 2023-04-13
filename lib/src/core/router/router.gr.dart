// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    LoginRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Login(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUp(),
      );
    },
    OTPVerificationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OTPVerification(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ResetPassword(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewPassword(),
      );
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Dashboard(),
      );
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Profile(),
      );
    },
    MessageRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Messages(),
      );
    },
    PostRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Post(),
      );
    },
    BookingRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Booking(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Home(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRouter.name,
          path: 'login',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: 'signup',
        ),
        RouteConfig(
          OTPVerificationRoute.name,
          path: 'otpVerification',
        ),
        RouteConfig(
          ResetPasswordRoute.name,
          path: 'resetpassword',
        ),
        RouteConfig(
          NewPasswordRoute.name,
          path: 'newpassword',
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/Dashboard',
          children: [
            RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: DashboardRoute.name,
              children: [
                RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              MessageRouter.name,
              path: 'message',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              PostRouter.name,
              path: 'post',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              BookingRouter.name,
              path: 'booking',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [Login]
class LoginRouter extends PageRouteInfo<void> {
  const LoginRouter()
      : super(
          LoginRouter.name,
          path: 'login',
        );

  static const String name = 'LoginRouter';
}

/// generated route for
/// [SignUp]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: 'signup',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [OTPVerification]
class OTPVerificationRoute extends PageRouteInfo<void> {
  const OTPVerificationRoute()
      : super(
          OTPVerificationRoute.name,
          path: 'otpVerification',
        );

  static const String name = 'OTPVerificationRoute';
}

/// generated route for
/// [ResetPassword]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: 'resetpassword',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [NewPassword]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(
          NewPasswordRoute.name,
          path: 'newpassword',
        );

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [Dashboard]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/Dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [Profile]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [Messages]
class MessageRouter extends PageRouteInfo<void> {
  const MessageRouter()
      : super(
          MessageRouter.name,
          path: 'message',
        );

  static const String name = 'MessageRouter';
}

/// generated route for
/// [Post]
class PostRouter extends PageRouteInfo<void> {
  const PostRouter()
      : super(
          PostRouter.name,
          path: 'post',
        );

  static const String name = 'PostRouter';
}

/// generated route for
/// [Booking]
class BookingRouter extends PageRouteInfo<void> {
  const BookingRouter()
      : super(
          BookingRouter.name,
          path: 'booking',
        );

  static const String name = 'BookingRouter';
}

/// generated route for
/// [Home]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}
