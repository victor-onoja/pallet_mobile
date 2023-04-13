import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pallet_mobile/src/core/app_utils/styles/app_colors.dart';
import 'package:pallet_mobile/src/general_widgets/alert_bar.dart';

class Helpers {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static InputDecoration inputdecor({
    String? hintText,
    EdgeInsetsGeometry? contentPadding,
  }) =>
      InputDecoration(
        contentPadding: contentPadding,
        filled: true,
        hintText: hintText,
        fillColor: AppColors.graylight9,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        labelStyle: const TextStyle(color: AppColors.graylight12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColors.graylight2,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColors.graylight2,
            width: 1,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColors.graylight2,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColors.graylight2,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColors.graylight2,
            width: 1,
          ),
        ),
      );

  static OutlineInputBorder replybod(double radius) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: const BorderSide(
          color: AppColors.graylight2,
          width: 0.5,
        ),
      );
}

void showError({
  required String text,
  required BuildContext context,
  void Function()? onFinished,
}) {
  Alert.showNotification(
    message: text,
    context: context,
    notificationType: 1,
    onFinished: onFinished,
  );
}

void showSuccess({
  required String text,
  required BuildContext context,
  void Function()? onFinished,
}) {
  Alert.showNotification(
    message: text,
    context: context,
    notificationType: 0,
    onFinished: onFinished,
  );
}

String showDate({
  required DateTime dateSent,
  required BuildContext context,
}) {
  final currentDay = DateTime.now();
  if (dateSent.day == currentDay.day &&
      dateSent.month == currentDay.month &&
      dateSent.year == currentDay.year) {
    return 'Today';
  }
  if (dateSent.day - currentDay.day == -1) {
    return 'Yesterday';
  }
  if (dateSent.difference(currentDay).inDays >= -2) {
    return DateFormat('EEEEE, ', 'en').format(dateSent) +
        TimeOfDay.fromDateTime(DateTime.now()).format(context);
  } else {
    log(dateSent.toString());
    log(currentDay.toString());
    return DateFormat("d'th', MMMM yyyy | ", 'en').format(dateSent) +
        TimeOfDay.fromDateTime(DateTime.now()).format(context);
  }
}
