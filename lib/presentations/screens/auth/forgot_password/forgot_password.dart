import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/components/main_text_field.dart';
import 'package:montra_ui/presentations/screens/auth/back_to_login/back_to_login.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

/// A screen for handling the password recovery process.
///
/// Users can enter their email address to receive a link to reset their password.
class ForgotPassword extends StatelessWidget {
  /// Creates a [ForgotPassword] instance.
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: const AppTextStyles()
              .titleTitle3
              .copyWith(color: AppColors.baseDarkDark50),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
                child: Column(
                  children: [
                    Text(
                      'Don’t worry.\nEnter your email and we’ll send you a link to reset your password.',
                      style: const AppTextStyles()
                          .titleTitle2
                          .copyWith(color: AppColors.baseDarkDark100),
                    ),
                    SizedBox(height: 46.h),
                    const MainTextField(
                      type: TextFieldType.noSuffix,
                      hintText: 'Enter your e-mail',
                    ),
                    SizedBox(height: 32.h),
                    MainButton(
                      type: ButtonType.primary,
                      text: 'Continue',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const BackToLogin(),
                        ));
                      },
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
