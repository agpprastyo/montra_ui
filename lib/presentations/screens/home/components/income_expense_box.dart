import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class IncomeExpenseBox extends StatelessWidget {
  const IncomeExpenseBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Text(
          'Account Balance',
          style: const AppTextStyles().bodyBody3,
        ),
        Text(
          '\$9400',
          style: const AppTextStyles().titleTitle1.copyWith(
                fontSize: 40.sp,
              ),
        ),
        SizedBox(height: 28.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildContainerItem(
              color: AppColors.greenGreen100,
              title: 'Income',
              subtitle: '\$5000',
              svgPath: 'assets/Magicons/Glyph/Finance/income.svg',
            ),
            buildContainerItem(
              color: AppColors.redRed100,
              title: 'Expenses',
              subtitle: '\$7000',
              svgPath: 'assets/Magicons/Glyph/Finance/expense.svg',
            ),
          ],
        ),
      ],
    );
  }

  Container buildContainerItem(
      {required Color color,
      required String title,
      required String subtitle,
      required String svgPath}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
            child: SvgPicture.asset(svgPath),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const AppTextStyles().bodyBody3.copyWith(color: Colors.white),
              ),
              SizedBox(height: 6.h),
              Text(
                subtitle,
                style:
                    const AppTextStyles().titleTitle3.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
