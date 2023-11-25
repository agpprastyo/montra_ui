import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';

class MainIconButton extends StatelessWidget {
  final String svgPath;
  final VoidCallback? onTap;

  const MainIconButton({
    super.key,
    required this.svgPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: AppColors.violetViolet40,
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset(
            svgPath,
            width: 32.h,
            height: 32.h,
          ),
        ),
      ),
    );
  }
}
