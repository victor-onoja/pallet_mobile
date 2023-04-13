import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/routes.dart';
part 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: Login, path: 'login', name: 'LoginRouter'),
    AutoRoute(page: SignUp, path: 'signup', name: 'SignUpRoute'),
    AutoRoute(page: OTPVerification, path: 'otpVerification', name: 'OTPVerificationRoute'),
    AutoRoute(
        page: ResetPassword, path: 'resetpassword', name: 'ResetPasswordRoute'),
    AutoRoute(page: NewPassword, path: 'newpassword', name: 'NewPasswordRoute'),
    AutoRoute(
      page: Dashboard,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: "home",
          name: "HomeRouter",
          children: [
            AutoRoute(
              page: Home,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: "profile",
          name: "profileRouter",
          page: Profile,
        ),
        AutoRoute(
          path: "message",
          name: "messageRouter",
          page: Messages,
        ),
        AutoRoute(
          path: "post",
          name: "postRouter",
          page: Post,
        ),
        AutoRoute(
          path: "booking",
          name: "bookingRouter",
          page: Booking,
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
