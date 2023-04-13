import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/app_utils/app_dimensions.dart';
import 'package:pallet_mobile/src/core/app_utils/app_strings.dart';
import 'package:pallet_mobile/src/core/app_utils/styles/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.color,
    this.textColor,
    this.width,
    this.text,
    this.onTap,
    this.padding,
    this.margin,
    this.height,
    this.onRetry,
    this.style,
    this.isLoading = false,
    this.isEnabled = true,
    this.hasError = false,
    this.hasBorder = false,
  }) : super(key: key);
  final Color? color, textColor;
  final String? text;
  final TextStyle? style;
  final void Function()? onTap, onRetry;
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final bool isLoading, isEnabled, hasError, hasBorder;

  @override
  Widget build(BuildContext context) {
    final bool hasFocus = FocusScope.of(context).hasFocus;

    return InkWell(
      onTap: hasError
          ? onRetry
          : isLoading
              ? null
              : (!isEnabled
                  ? null
                  : () {
                      if (hasFocus) {
                        FocusScope.of(context).unfocus();
                      }
                      onTap?.call();
                    }),
      borderRadius: BorderRadius.circular(AppDimension.big),
      child: Container(
        constraints: BoxConstraints(maxWidth: 75.w),
        height: height ?? 7.h,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        decoration: BoxDecoration(
          border: hasBorder
              ? Border.all(width: 1.5, color: AppColors.primarymain)
              : null,
          borderRadius: BorderRadius.circular(AppDimension.big),
          color: color ??
              (!isEnabled ? AppColors.primarymain : AppColors.primarymain),
        ),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isLoading)
              Text(
                text ?? AppString.click,
                style: style ??
                    TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: textColor ?? AppColors.secondarylight,
                    ),
              ),
            if (isLoading)
              //Remove this widget
              const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
