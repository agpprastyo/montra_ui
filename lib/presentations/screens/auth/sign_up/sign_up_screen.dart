import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/components/main_text_field.dart';
import 'package:montra_ui/presentations/screens/auth/sign_in/sign_in_screen.dart';
import 'package:montra_ui/presentations/screens/auth/sign_up/components/term_conditions.dart';
import 'package:montra_ui/presentations/screens/auth/verification/verification_screen.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

import '../../../routes/route.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: const AppTextStyles()
              .titleTitle3
              .copyWith(color: AppColors.baseDarkDark50),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
              child: Column(
                children: [
                  const MainTextField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    type: TextFieldType.noSuffix,
                    hintText: 'Enter your name',
                  ),
                  SizedBox(height: 24.h),
                  const MainTextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    type: TextFieldType.noSuffix,
                    hintText: 'Enter your email',
                  ),
                  SizedBox(height: 24.h),
                  const MainTextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    type: TextFieldType.suffix,
                    hintText: 'Enter your password',
                  ),
                  SizedBox(height: 24.h),
                  const TermConditions(),
                  SizedBox(height: 16.h),
                  MainButton(
                    type: ButtonType.primary,
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const VerificationScreen(),
                      ));
                    },
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Or continue with',
                    style: const AppTextStyles()
                        .bodyBody3
                        .copyWith(color: AppColors.baseLightLight20),
                  ),
                  SizedBox(height: 12.h),
                  const MainButton(
                      type: ButtonType.tertiary, text: 'Sign Up With google'),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: const AppTextStyles()
                            .bodyBody1
                            .copyWith(color: AppColors.baseLightLight20),
                      ),
                      TextButton(
                        onPressed: () {
                          AppRoute.signIn.push(context);
                        },
                        child: Text(
                          'Login',
                          style: const AppTextStyles().bodyBody1.copyWith(
                              color: AppColors.violetViolet100,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
      }),
    );
  }
}
