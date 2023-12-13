import 'package:flutter/material.dart';
import 'package:montra_ui/presentations/components/main_icon_button.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violetViolet100,
      appBar: AppBar(
        backgroundColor: AppColors.violetViolet100,
        title: Text(
          'Detail Account',
          style: const AppTextStyles()
              .titleTitle3
              .copyWith(color: AppColors.baseLightLight100),
        ),
        actions: [
          MainIconButton(
            svgPath: 'assets/Magicons/Glyph/User Interface/trash.svg',
            onTap: () {},
            svgColor: AppColors.baseLightLight100,
          ),
        ],
      ),
    );
  }
}
