import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/logo_item.dart';
import 'package:montra_ui/presentations/screens/profile/account_section/account_screen.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
        //set border radius more than 50% of height and width to make circle
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          AccountListItem(
            title: 'account',
            svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const AccountScreen(),
              ));
            },
            color: AppColors.violetViolet20,
            svgColor: AppColors.violetViolet100,
          ),
          const Divider(
            thickness: 0.5,
          ),
          AccountListItem(
            title: 'Settings',
            svgPath: 'assets/Magicons/Glyph/User Interface/settings.svg',
            onTap: () {},
            color: AppColors.violetViolet20,
            svgColor: AppColors.violetViolet100,
          ),
          const Divider(
            thickness: 0.5,
          ),
          AccountListItem(
            title: 'Export Data',
            svgPath: 'assets/Magicons/Glyph/User Interface/upload.svg',
            onTap: () {},
            color: AppColors.violetViolet20,
            svgColor: AppColors.violetViolet100,
          ),
          const Divider(
            thickness: 0.5,
          ),
          AccountListItem(
            title: 'Logout',
            svgPath: 'assets/Magicons/Outline/logout.svg',
            onTap: () {},
            color: AppColors.redRed20,
            svgColor: AppColors.redRed100,
          ),
        ],
      ),
    );
  }
}

//ignore: must_be_immutable
class AccountListItem extends StatelessWidget {
  final String title;
  final String svgPath;
  final VoidCallback? onTap;
  final Color color;
  final Color svgColor;

  const AccountListItem({
    super.key,
    required this.title,
    required this.svgPath,
    this.onTap,
    required this.color,
    required this.svgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 16.h),
          onTap: onTap,
          dense: true,
          leading: SizedBox(
            width: 50.h,
            // color: AppColors.redRed100,
            child: LogoItem(
              color: color,
              svgPath: svgPath,
              svgColor: svgColor,
              containerPadding: 10,
              containerSize: 70,
            ),
          ),
          title: Text(
            title,
            style: const AppTextStyles()
                .bodyBody2
                .copyWith(color: AppColors.baseDarkDark25),
          ),
        ),
      ],
    );
  }
}
