import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_icon_button.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class PictureProfile extends StatelessWidget {
  const PictureProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // circle avatar with border
        Container(
          margin: EdgeInsets.only(left: 16.h, top: 16.h, right: 16.h),
          width: 90.h,
          height: 90.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.violetViolet100,
              width: 4.h,
            ),
          ),
          // Add padding to create space between border and CircleAvatar
          padding: EdgeInsets.all(4.h),
          child: CircleAvatar(
            radius: 80.r,
            backgroundColor: Colors.grey,
            backgroundImage:
                const AssetImage('assets/5da0032ece7f0c0eb732f6e058ce5030.jpg'),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Username',
                style: const AppTextStyles()
                    .bodyBody3
                    .copyWith(color: AppColors.baseLightLight20),
              ),
              SizedBox(height: 8.h),
              Text(
                'Frieren',
                style: const AppTextStyles()
                    .titleTitle2
                    .copyWith(color: AppColors.baseDarkDark75),
              ),
            ],
          ),
        ),
        MainIconButton(
          svgPath: 'assets/Magicons/Outline/User Interface/edit.svg',
          onTap: () {},
        )
      ],
    );
  }
}
