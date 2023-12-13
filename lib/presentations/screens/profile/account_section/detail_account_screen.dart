import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/logo_item.dart';
import 'package:montra_ui/presentations/components/main_icon_button.dart';
import 'package:montra_ui/presentations/screens/profile/account_section/components/total_amount_banner.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class DetailAccountScreen extends StatelessWidget {
  const DetailAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail Account',
            style: const AppTextStyles()
                .titleTitle3
                .copyWith(color: AppColors.baseDarkDark50),
          ),
          actions: [
            MainIconButton(
              svgPath: 'assets/Magicons/Outline/User Interface/edit.svg',
              onTap: () {},
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                      padding: EdgeInsets.only(top: 0.h),
                      child: const Column(
                        children: [
                          TotalAmountBanner(),
                          DetailsAmountList(),
                        ],
                      )),
                ),
              ),
            );
          },
        ));
  }
}

class DetailsAmountList extends StatelessWidget {
  const DetailsAmountList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      // color: AppColors.redRed100,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h, top: 50.h),
            child: Text(
              'Today',
              style: const AppTextStyles().titleTitle3,
            ),
          ),
          SizedBox(height: 8.h),
          ListTile(
            leading: const LogoItem(
              color: AppColors.yellowYellow20,
              svgPath:
                  'assets/Magicons/Glyph/Ecommerce & Shopping/shopping-bag.svg',
              svgColor: AppColors.yellowYellow100,
              containerSize: 60,
            ),
            title: Text(
              'Shopping',
              style: const AppTextStyles()
                  .bodyBody2
                  .copyWith(color: AppColors.baseDarkDark25),
            ),
            subtitle: Text(
              'Buy some grocery',
              style: const AppTextStyles()
                  .small
                  .copyWith(color: AppColors.baseLightLight20),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '- \$120',
                  style: const AppTextStyles()
                      .bodyBody2
                      .copyWith(color: AppColors.redRed100),
                ),
                Text(
                  '10:00 AM',
                  style: const AppTextStyles()
                      .bodyBody3
                      .copyWith(color: AppColors.baseLightLight20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const LogoItem(
              color: AppColors.yellowYellow20,
              svgPath:
                  'assets/Magicons/Glyph/Ecommerce & Shopping/shopping-bag.svg',
              svgColor: AppColors.yellowYellow100,
              containerSize: 60,
            ),
            title: Text(
              'Shopping',
              style: const AppTextStyles()
                  .bodyBody2
                  .copyWith(color: AppColors.baseDarkDark25),
            ),
            subtitle: Text(
              'Buy some grocery',
              style: const AppTextStyles()
                  .small
                  .copyWith(color: AppColors.baseLightLight20),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '- \$120',
                  style: const AppTextStyles()
                      .bodyBody2
                      .copyWith(color: AppColors.redRed100),
                ),
                Text(
                  '10:00 AM',
                  style: const AppTextStyles()
                      .bodyBody3
                      .copyWith(color: AppColors.baseLightLight20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const LogoItem(
              color: AppColors.yellowYellow20,
              svgPath:
                  'assets/Magicons/Glyph/Ecommerce & Shopping/shopping-bag.svg',
              svgColor: AppColors.yellowYellow100,
              containerSize: 60,
            ),
            title: Text(
              'Shopping',
              style: const AppTextStyles()
                  .bodyBody2
                  .copyWith(color: AppColors.baseDarkDark25),
            ),
            subtitle: Text(
              'Buy some grocery',
              style: const AppTextStyles()
                  .small
                  .copyWith(color: AppColors.baseLightLight20),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '- \$120',
                  style: const AppTextStyles()
                      .bodyBody2
                      .copyWith(color: AppColors.redRed100),
                ),
                Text(
                  '10:00 AM',
                  style: const AppTextStyles()
                      .bodyBody3
                      .copyWith(color: AppColors.baseLightLight20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
