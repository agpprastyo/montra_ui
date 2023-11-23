import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/components/main_text_field.dart';
import 'package:montra_ui/presentations/screens/auth/forgot_password/forgot_password.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: const AppTextStyles()
              .titleTitle3
              .copyWith(color: AppColors.baseDarkDark50),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
                child: Column(
                  children: [
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
                    const MainButton(type: ButtonType.primary, text: 'Login'),
                    SizedBox(height: 35.h),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ForgotPassword(),
                        ));
                      },
                      child: Text(
                        'Forgot Password',
                        style: const AppTextStyles()
                            .titleTitle3
                            .copyWith(color: AppColors.violetViolet100),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
