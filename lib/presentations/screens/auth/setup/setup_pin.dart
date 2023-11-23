import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/screens/auth/setup/setup_account.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class SetupPin extends StatelessWidget {
  const SetupPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violetViolet100,
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not implement yet',
              style: const AppTextStyles()
                  .titleTitle2
                  .copyWith(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: MainButton(
                type: ButtonType.secondary,
                text: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const SetupAccount(),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
