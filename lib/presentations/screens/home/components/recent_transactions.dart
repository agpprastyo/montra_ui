import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/logo_item.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20.h),
      recentTab(),
      SizedBox(height: 8.h),
      Container(
        height: 350.h,
        child: ListView.builder(
          itemCount: 5, // Change this to the number of recent transactions
          itemBuilder: (context, index) {
            return Column(
              children: [
                recentTransactionsItems(),
                SizedBox(height: 10.h), // Add space between items
              ],
            );
          },
        ),
      )
    ]);
  }
}

Container recentTab() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recent Transaction',
          style: const AppTextStyles().titleTitle3,
        ),
        SizedBox(
          height: 32.h,
          width: 78.w,
          child: FilledButton.tonal(
            onPressed: () {},
            style: FilledButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.violetViolet20),
            child: Text(
              'See All',
              style: const AppTextStyles()
                  .bodyBody3
                  .copyWith(color: AppColors.violetViolet100),
            ),
          ),
        )
      ],
    ),
  );
}

Container recentTransactionsItems() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 36.w),
    child: Row(
      children: [
        const LogoItem(
          color: AppColors.yellowYellow20,
          svgPath:
              'assets/Magicons/Glyph/Ecommerce & Shopping/shopping-bag.svg',
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shopping',
                style: const AppTextStyles().bodyBody2,
              ),
              Text(
                'Buy some grocery',
                style: const AppTextStyles().small,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '-\$120',
              style: const AppTextStyles()
                  .bodyBody2
                  .copyWith(color: AppColors.redRed100),
            ),
            Text(
              '10:00 AM',
              style: const AppTextStyles().small,
            ),
          ],
        ),
      ],
    ),
  );
}
