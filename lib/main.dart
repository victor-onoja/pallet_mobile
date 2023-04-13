import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pallet_mobile/src/core/app_utils/styles/app_theme.dart';
import 'package:pallet_mobile/src/core/router/router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(
    ProviderScope(
      child: Pallet(),
    ),
  );
}

class Pallet extends StatelessWidget {
  Pallet({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return MaterialApp.router(
          title: 'Pallet',
          theme: AppTheme.lightTheme,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

//flutter pub run build_runner build --delete-conflicting-outputs
//flutter packages pub run build_runner watch
