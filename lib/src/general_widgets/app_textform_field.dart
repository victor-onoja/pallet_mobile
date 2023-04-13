import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/app_utils/app_utils.dart';

class AppTextsFormField extends FormField<String> {
  AppTextsFormField({
    Key? key,
    FormFieldValidator<String>? validator,
    InputDecoration? decoration,
    bool obscureText = false,
    bool passwordField = false,
    String? hintText,
    TextEditingController? controller,
    FormFieldSetter<String>? onSaved,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            builder: (FormFieldState<String> state) {
              return TextFormField(
                cursorColor: AppColors.graylight12,
                textInputAction: textInputAction,
                keyboardType: textInputType,
                style: TextStyle(
                    color: AppColors.graylight12,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                decoration: decoration ??
                    InputDecoration(
                        errorStyle: TextStyle(
                            color: AppColors.error,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp),
                        suffixIcon: passwordField
                            ? Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(end: 16),
                                child: GestureDetector(
                                  onTap: () {
                                    if (obscureText) {
                                      state.setState(() {
                                        obscureText = false;
                                      });
                                    } else if (!obscureText) {
                                      state.setState(() {
                                        obscureText = true;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: obscureText
                                        ? AppColors.graylight9
                                        : AppColors.graylight12,
                                    size: 20.sp,
                                  ),
                                ),
                              )
                            : null,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.graylight12),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.graylight12),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(8, 16, 0, 16),
                        hintStyle: TextStyle(
                            color: AppColors.graylight9,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                        hintText: hintText),
                obscureText: obscureText,
                controller: controller,
                onChanged: (value) {
                  state.didChange(value);
                },
                validator: validator,
                onSaved: onSaved,
              );
            });
}
