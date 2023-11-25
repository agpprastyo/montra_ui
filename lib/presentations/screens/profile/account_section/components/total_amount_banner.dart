import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/logo_item.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class TotalAmountBanner extends StatelessWidget {
  const TotalAmountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: 8.h,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const LogoItem(
              color: Color(0xFFF1F1FA),
              svgSize: 52,
              containerSize: 55,
              containerPadding: 0,
              svgPath:
                  'assets/payment_logo/installment-international/international payment/paypal.svg',
            ),
            Text('Paypal',
                style: const AppTextStyles()
                    .titleTitle2
                    .copyWith(color: Colors.black)),
            Text('\$4000',
                style: const AppTextStyles()
                    .titleTitle1
                    .copyWith(color: AppColors.baseDarkDark50)),
          ],
        ),
      ),
    );
  }
}
