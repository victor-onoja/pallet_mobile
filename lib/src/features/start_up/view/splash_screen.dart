import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/router.dart';
import 'package:pallet_mobile/src/general_widgets/app_button.dart';
import '../../../core/app_utils/app_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimension.medium),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                AppPng.appLogo,
              ),
            ),
            Positioned(
              bottom: AppDimension.large,
              right: 0,
              left: 0,
              child: AppButton(
                text: AppString.continu,
                textColor: AppColors.scaffoldBackground,
                color: AppColors.primarymain,
                onTap: () => context.router.replace(
                  const LoginRouter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
