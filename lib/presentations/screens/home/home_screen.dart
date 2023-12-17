import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/screens/home/components/build_home_app_bar.dart';
import 'package:montra_ui/presentations/screens/home/components/income_expense_box.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 324.h,
                  decoration: BoxDecoration(
                    // linear gradient
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.yellowYellow20,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.r),
                      bottomRight: Radius.circular(32.r),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 324.h,
                  decoration: BoxDecoration(
                    color: AppColors.yellowYellow20.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.r),
                      bottomRight: Radius.circular(32.r),
                    ),
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      const BuildHomeAppBar(),
                      IncomeExpenseBox(),
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              child: Text(
                'Spend Frequency',
                style: AppTextStyles().titleTitle3,
              ),
            )
          ],
        ));
  }
}
