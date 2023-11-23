import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/components/main_text_field.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
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
                    const MainTextField(
                      type: TextFieldType.noSuffix,
                      hintText: 'New Password',
                    ),
                    SizedBox(height: 24.h),
                    const MainTextField(
                      type: TextFieldType.noSuffix,
                      hintText: 'ReType New Password',
                    ),
                    SizedBox(height: 24.h),
                    MainButton(
                      type: ButtonType.primary,
                      text: 'Continue',
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
