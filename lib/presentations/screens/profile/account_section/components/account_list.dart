import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/data/models/row_account_balance.dart';
import 'package:montra_ui/presentations/components/logo_item.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: ListView(
          children: List.generate(
            accountList.length,
            (index) {
              final account = accountList[index];
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (BuildContext context) => const (),
                      // ));
                    },
                    child: RowAccountBalance(
                      svgPath: account.svgPath,
                      accountName: account.accountName,
                      totalBalance: account.totalBalance,
                    ),
                  ),
                  if (index < accountList.length - 1)
                    const Divider(thickness: 0.6),
                  if (index == accountList.length - 1)
                    const SizedBox(height: 50.0),
                  // Add a SizedBox for the last item
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RowAccountBalance extends StatelessWidget {
  final String svgPath;
  final String accountName;
  final int totalBalance;

  const RowAccountBalance({
    super.key,
    required this.svgPath,
    required this.accountName,
    required this.totalBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        // alignment: WrapAlignment.spaceBetween,
        children: [
          LogoItem(
            color: const Color(0xFFF1F1FA),
            svgPath: svgPath,
            containerPadding: 10,
            // svgColor: AppColors.violetViolet100,
          ),
          SizedBox(width: 8.w),
          Expanded(
            flex: 3,
            child: Text(
              accountName,
              style: const AppTextStyles().titleTitle3,
            ),
          ),
          Text(
            '\$$totalBalance',
            style: const AppTextStyles().titleTitle3,
          ),
        ],
      ),
    );
  }
}
