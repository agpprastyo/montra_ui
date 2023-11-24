import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class LogoItem extends StatefulWidget {
  const LogoItem({
    Key? key,
    required this.color,
    required this.svgPath,
    this.svgColor, // Make it nullable
  }) : super(key: key);

  final Color color;
  final String svgPath;
  final Color? svgColor; // Make it nullable

  @override
  State<LogoItem> createState() => _LogoItemState();
}

class _LogoItemState extends State<LogoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: SvgPicture.asset(
        widget.svgPath,
        width: 32.h,
        height: 32.h,
        colorFilter: widget.svgColor != null
            ? ColorFilter.mode(
                widget.svgColor!,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }
}
