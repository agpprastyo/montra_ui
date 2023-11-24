import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/screens/profile/account_section/components/account_list.dart';
import 'package:montra_ui/presentations/screens/profile/account_section/components/banner_total_balance.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Account',
            style: const AppTextStyles()
                .titleTitle3
                .copyWith(color: AppColors.baseDarkDark50),
          ),
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
                    child: Stack(children: [
                      const Column(
                        children: [
                          BannerTotalBalance(),
                          AccountList(),
                        ],
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.white,
                            width: double.maxFinite,
                            height: 80.h,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: 20.w, left: 20.w, bottom: 10.h),
                                child: const MainButton(
                                  type: ButtonType.primary,
                                  text: '+ Add new wallet',
                                ),
                              ),
                            ),
                          )),
                    ]),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
