import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/screens/home/components/expenses_tab_chart/expenses_chart.dart';
import 'package:montra_ui/presentations/screens/home/components/expenses_tab_chart/tab.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class ExpensesTabChart extends StatefulWidget {
  const ExpensesTabChart({super.key});

  @override
  ExpensesTabChartState createState() => ExpensesTabChartState();
}

class ExpensesTabChartState extends State<ExpensesTabChart> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
          child: Text(
            'Spend Frequency',
            style: const AppTextStyles().titleTitle3, // Add your text style
          ),
        ),
        SizedBox(
          height: 210,
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ExpenseChart(
                color: AppColors.violetViolet100,
              ),
              ExpenseChart(
                color: AppColors.redRed100,
              ),
              ExpenseChart(
                color: AppColors.greenGreen100,
              ),
              ExpenseChart(
                color: AppColors.blueBlue100,
              ),
            ],
          ),
        ),
        MyTabs(
          pageController: _pageController,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
