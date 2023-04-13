import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/router/router.dart';
import '../../../../core/app_utils/app_utils.dart';
import '../../../../general_widgets/general_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final emailPhoneController = TextEditingController();
  final passwordController = TextEditingController();
  String _emailPhone = ''; //email or phone
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimension.big),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  AppPng.appLogo,
                ),
                Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(bottom: 4, left: 8),
                            child: Text(
                              "Email/Phone",
                              style: Theme.of(context).textTheme.displayMedium,
                            )),
                        AppTextsFormField(
                          textInputAction: TextInputAction.next,
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
                        Spacing.mediumHeight(),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 4, left: 8),
                            child: Text(
                              "Password",
                              style: Theme.of(context).textTheme.displayMedium,
                            )),
                        AppTextsFormField(
                          textInputAction: TextInputAction.done,
                          passwordField: true,
                          hintText: '********',
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'field cannot be empty';
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
                        RichText(
                          text: TextSpan(
                              text: 'Forgotten Password?',
                              style: Theme.of(context).textTheme.labelMedium,
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Reset',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        context.router.replace(
                                            const ResetPasswordRoute());
                                      })
                              ]),
                        ),
                        Spacing.bigHeight(),
                        Center(
                          child: AppButton(
                            text: 'Sign In',
                            textColor: AppColors.scaffoldBackground,
                            color: AppColors.primarymain,
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                                //do something with _password, _emailPhone
                                context.router.replace(const DashboardRoute());
                                passwordController.clear();
                                emailPhoneController.clear();
                              }
                            },
                          ),
                        ),
                      ],
                    )),
                Spacing.smallHeight(),
                AppButton(
                  onTap: () => context.router.push(const SignUpRoute()),
                  text: 'Sign Up',
                  hasBorder: true,
                  textColor: const Color(0XFF5A0201),
                  color: const Color(0xFFFCFCFC),
                ),
                Spacing.mediumHeight(),
                Center(
                  child: GestureDetector(
                    onTap: () => context.router.replace(const DashboardRoute()),
                    child: Text(
                      'Visit as a Guest',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
