import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/router.dart';

import '../../../../../core/app_utils/app_utils.dart';
import '../../../../../general_widgets/general_widgets.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  String _password = '';
  String _confirmpassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create New Password',
          style: TextStyle(color: AppColors.graylight12),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimension.big),
          child: Center(
            child: Column(
              children: [
                Image.asset(AppPng.createPassword),
                Spacing.mediumHeight(),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 4, left: 8),
                          child: Text(
                            "Password",
                            style: Theme.of(context).textTheme.displayMedium,
                          )),
                      AppTextsFormField(
                        textInputAction: TextInputAction.next,
                        passwordField: true,
                        hintText: '********',
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 8) {
                            return 'Password must have at least 8 characters';
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          _password = newValue!;
                        },
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword,
                      ),
                      Spacing.mediumHeight(),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 4, left: 8),
                          child: Text(
                            "Confirm Password",
                            style: Theme.of(context).textTheme.displayMedium,
                          )),
                      AppTextsFormField(
                        textInputAction: TextInputAction.done,
                        passwordField: true,
                        hintText: '********',
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value != passwordController.text) {
                            return 'Confirm your password';
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          _confirmpassword = newValue!;
                        },
                        controller: confirmpasswordController,
                        textInputType: TextInputType.visiblePassword,
                      ),
                      Spacing.mediumHeight(),
                      Center(
                        child: AppButton(
                          text: 'Change Password',
                          textColor: AppColors.scaffoldBackground,
                          color: AppColors.primarymain,
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              //do something with data
                              context.router.replace(const LoginRouter());
                              passwordController.clear();
                              confirmpasswordController.clear();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
