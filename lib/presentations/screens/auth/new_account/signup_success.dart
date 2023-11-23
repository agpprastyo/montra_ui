import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 128.h,
              width: 128.h,
              child: SvgPicture.asset(
                'assets/Magicons/Glyph/User Interface/success.svg',
              ),
            ),
            Text(
              'You are set!',
              style: const AppTextStyles()
                  .titleTitle2
                  .copyWith(color: AppColors.baseDarkDark50),
            )
          ],
        ),
      ),
    );
  }
}
