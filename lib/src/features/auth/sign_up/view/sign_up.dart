import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/router.dart';

import '../../../../core/app_utils/app_utils.dart';
import '../../../../general_widgets/general_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  final fullnameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  String _fullname = ''; //email or phone
  String _phonenumber = '';
  String _email = '';
  String _password = '';
  String _confirmpassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Your Account',
          style: TextStyle(color: AppColors.graylight12),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimension.big),
          child: Column(
            children: [
              Spacing.bigHeight(),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4, left: 8),
                      child: Text(
                        "Full Name",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    AppTextsFormField(
                      textInputAction: TextInputAction.next,
                      hintText: 'John Doe',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.split(' ').length < 2) {
                          return 'please enter your full name';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _fullname = newValue!;
                      },
                      controller: fullnameController,
                      textInputType: TextInputType.name,
                    ),
                    Spacing.mediumHeight(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4, left: 8),
                      child: Text(
                        "Phone Number",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    AppTextsFormField(
                      textInputAction: TextInputAction.next,
                      hintText: '080x xxx xxxx',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length != 11) {
                          return 'Enter a valid phone number';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _phonenumber = newValue!;
                      },
                      controller: phonenumberController,
                      textInputType: TextInputType.phone,
                    ),
                    Spacing.mediumHeight(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4, left: 8),
                      child: Text(
                        "Email",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    AppTextsFormField(
                      textInputAction: TextInputAction.next,
                      hintText: 'example@mail.com',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email cannot be empty';
                        } else if (!value.contains('@') ||
                            !value.contains('.')) {
                          return 'Email must contain "@" and "."';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _email = newValue!;
                      },
                      controller: emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    Spacing.mediumHeight(),
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
                    Spacing.bigHeight(),
                    Center(
                      child: AppButton(
                        text: 'Create Account',
                        textColor: AppColors.scaffoldBackground,
                        color: AppColors.primarymain,
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            //do something with data
                            context.router.push(const OTPVerificationRoute());
                            fullnameController.clear();
                            phonenumberController.clear();
                            emailController.clear();
                            passwordController.clear();
                            confirmpasswordController.clear();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Spacing.mediumHeight(),
              Text(
                'Already Have an Account?',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              AppButton(
                onTap: () => context.router.pop(),
                text: 'Sign In',
                hasBorder: true,
                textColor: const Color(0XFF5A0201),
                color: const Color(0xFFFCFCFC),
              ),
              Spacing.mediumHeight(),
              Text(
                'Or',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacing.smallHeight(),
              GestureDetector(
                onTap: () => context.router.replace(const DashboardRoute()),
                child: Text(
                  'Visit as a Guest',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
