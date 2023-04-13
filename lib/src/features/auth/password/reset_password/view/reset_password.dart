import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/router.dart';

import '../../../../../core/app_utils/app_utils.dart';
import '../../../../../general_widgets/general_widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  final emailPhoneController = TextEditingController();
  String _emailPhone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Reset Your Password',
            style: TextStyle(color: AppColors.graylight12),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.router.replace(const LoginRouter()),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppDimension.big),
            child: Center(
              child: Column(
                children: [
                  Image.asset(AppPng.resetPassword),
                  Spacing.bigHeight(),
                  Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 4, left: 8),
                              child: Text(
                                "Email/Phone",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              )),
                          AppTextsFormField(
                            textInputAction: TextInputAction.done,
                            hintText: 'Enter your email or Phone Number',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'field cannot be empty';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              _emailPhone = newValue!;
                            },
                            controller: emailPhoneController,
                            textInputType: TextInputType.visiblePassword,
                          ),
                          Spacing.bigHeight(),
                          Center(
                            child: AppButton(
                              text: 'Reset Password',
                              textColor: AppColors.scaffoldBackground,
                              color: AppColors.primarymain,
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  _formkey.currentState!.save();
                                  context.router.push(const NewPasswordRoute());
                                  //do something
                                  emailPhoneController.clear();
                                }
                              },
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
