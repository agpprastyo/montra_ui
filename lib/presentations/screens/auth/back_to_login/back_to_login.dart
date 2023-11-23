import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/screens/auth/reset_password/reset_password.dart';
import 'package:montra_ui/presentations/screens/auth/sign_in/sign_in_screen.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class BackToLogin extends StatelessWidget {
  const BackToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
        child: Column(
          children: [
            SizedBox(
              height: 312.h,
              width: 312.h,
              child: SvgPicture.asset('assets/illustrations/email.svg'),
            ),
            SizedBox(height: 42.h),
            Text(
              'Your email is on the way',
              style: const AppTextStyles()
                  .titleTitle2
                  .copyWith(color: AppColors.baseDarkDark100),
            ),
            SizedBox(height: 24.h),
            Text(
              'Check your email test@test.com and\nfollow the instructions to reset your\npassword',
              textAlign: TextAlign.center,
              style: const AppTextStyles()
                  .bodyBody1
                  .copyWith(color: AppColors.baseDarkDark25),
            ),
            Expanded(child: Container()),
            MainButton(
              type: ButtonType.primary,
              text: 'Back to Login',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ResetPassword(),
                ));
              },
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
