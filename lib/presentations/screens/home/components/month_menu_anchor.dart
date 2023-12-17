import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

// final List<String> months = [
//   'January',
//   'February',
//   'March',
//   'April',
//   'May',
//   'June',
//   'July',
//   'August',
//   'September',
//   'October',
//   'November',
//   'December'
// ];

enum Months {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

class MonthMenuAnchor extends StatefulWidget {
  const MonthMenuAnchor({super.key});

  @override
  State<MonthMenuAnchor> createState() => _MonthMenuAnchorState();
}

class _MonthMenuAnchorState extends State<MonthMenuAnchor> {
  Months? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      crossAxisUnconstrained: false,
      style: MenuStyle(
        elevation: MaterialStateProperty.all(2),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        maximumSize: MaterialStateProperty.all(const Size(500, 200)),
        visualDensity: VisualDensity.comfortable,
        alignment: AlignmentDirectional.bottomCenter,
      ),
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const StadiumBorder()),
              side: MaterialStateProperty.all(
                const BorderSide(
                    color: AppColors.blueBlue20,
                    width: 0.6,
                    style: BorderStyle.solid),
              ),
            ),
            onPressed: null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                    'assets/Magicons/Glyph/Arrow/arrow-down-2.svg'),
                Text(
                  selectedMenu == null
                      ? 'Select a month'
                      : Months.values[selectedMenu!.index]
                          .toString()
                          .split('.')
                          .last,
                  style: const AppTextStyles()
                      .bodyBody2
                      .copyWith(color: AppColors.baseDarkDark50),
                ),
              ],
            ),
          ),
          tooltip: 'Show menu',
        );
      },
      menuChildren: List<MenuItemButton>.generate(
        12,
        (int index) => MenuItemButton(
            onPressed: () =>
                setState(() => selectedMenu = Months.values[index]),
            child: Text(
              Months.values[index].toString().split('.').last,
              style: const AppTextStyles().bodyBody2.copyWith(
                    color: AppColors.baseDarkDark50,
                    fontWeight: FontWeight.w300,
                  ),
            )),
      ),
    );
  }
}
