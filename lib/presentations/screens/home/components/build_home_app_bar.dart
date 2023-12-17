import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/screens/home/components/month_menu_anchor.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';

class BuildHomeAppBar extends StatelessWidget {
  const BuildHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // margin:
          //     EdgeInsets.only(left: 16.h, top: 16.h, right: 16.h),
          width: 32.h,
          height: 32.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.violetViolet100,
              width: 1.h,
            ),
          ),
          // Add padding to create space between border and CircleAvatar
          padding: EdgeInsets.all(2.h),
          child: CircleAvatar(
            radius: 16.r,
            backgroundColor: Colors.grey,
            backgroundImage:
                const AssetImage('assets/5da0032ece7f0c0eb732f6e058ce5030.jpg'),
          ),
        ),
        const Column(
          children: [
            MonthMenuAnchor(),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
              'assets/Magicons/Glyph/Ecommerce & Shopping/notifiaction.svg'),
        )
      ],
    );
  }
}
