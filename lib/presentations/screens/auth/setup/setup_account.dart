import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/screens/auth/new_account/new_account.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class SetupAccount extends StatelessWidget {
  const SetupAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Text(
              'Let’s setup your account!',
              style: const AppTextStyles().titleTitle1,
            ),
            SizedBox(height: 40.h),
            Text(
              'Account can be your bank, credit card or\nyour wallet.',
              style: const AppTextStyles()
                  .bodyBody3
                  .copyWith(color: AppColors.baseDarkDark25),
            ),
            Expanded(child: Container()),
            MainButton(
              type: ButtonType.primary,
              text: 'Let\'s go',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const NewAccount(),
                ));
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
