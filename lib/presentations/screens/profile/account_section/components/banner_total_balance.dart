import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class BannerTotalBalance extends StatelessWidget {
  const BannerTotalBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: double.maxFinite,
          height: 165.h,
          child: Image.asset(
            'assets/BG.png',
            fit: BoxFit.cover,
          )),
      Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Account Balance',
                style: const AppTextStyles()
                    .bodyBody3
                    .copyWith(color: AppColors.baseLightLight20),
              ),
              SizedBox(height: 8.h),
              Text(
                '\$9400',
                style: const AppTextStyles()
                    .titleTitle1
                    .copyWith(color: AppColors.baseDarkDark75),
              ),
            ],
          ))
    ]);
  }
}
