import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pallet_mobile/src/core/app_utils/app_utils.dart';
import 'package:pallet_mobile/src/general_widgets/general_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.verifyYourNo,
          style: TextStyle(color: AppColors.graylight12),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimension.large),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.bigHeight(),
              Image.asset(AppPng.otpVerification),
              Spacing.bigHeight(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimension.large),
                child: PinCodeFields(
                  onComplete: (value) {
                    debugPrint(value);
                  },
                  activeBorderColor: AppColors.primarymain,
                  keyboardType: TextInputType.number,
                  textStyle: GoogleFonts.inter(
                    color: AppColors.primarymain,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  fieldHeight: 10.5.h,
                  fieldWidth: 8.w,
                  autofocus: true,
                  animation: Animations.shrink,
                  animationDuration: const Duration(milliseconds: 250),
                  animationCurve: Curves.bounceInOut,
                  switchInAnimationCurve: Curves.bounceIn,
                  switchOutAnimationCurve: Curves.bounceOut,
                ),
              ),
              Spacing.mediumHeight(),
              RichText(
                text: TextSpan(
                  text: AppString.codeExp,
                  style: Theme.of(context).textTheme.labelMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: AppString.resend,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: AppColors.primarymain),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //Send the request again
                        },
                    ),
                  ],
                ),
              ),
              const Spacing.height(100),
              AppButton(
                text: AppString.verify,
                onTap: () {},
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
