import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra_ui/presentations/screens/budget/budget_screen.dart';
import 'package:montra_ui/presentations/screens/home/home_screen.dart';
import 'package:montra_ui/presentations/screens/profile/profile_screen.dart';
import 'package:montra_ui/presentations/screens/transaction/transaction_screen.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const TransactionScreen(),
    const BudgetScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.violetViolet100,
        shape: const CircleBorder(),
        onPressed: () {
          // Code to execute on button press
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavItem(
              0,
              'assets/Magicons/Glyph/User Interface/home.svg',
              'Home',
            ),
            _buildBottomNavItem(
              1,
              'assets/Magicons/Glyph/Finance/transaction.svg',
              'Transaction',
            ),
            SizedBox(width: 90.w),
            _buildBottomNavItem(
              2,
              'assets/Magicons/Glyph/Finance/pie-chart.svg',
              'Budget',
            ),
            _buildBottomNavItem(
              3,
              'assets/Magicons/Glyph/Ecommerce & Shopping/user.svg',
              'Profile',
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }

  Widget _buildBottomNavItem(int index, String svgPath, String name) {
    return IconButton(
      tooltip: name,
      icon: SvgPicture.asset(svgPath,
          height: 32.h,
          width: 32.w,
          colorFilter: ColorFilter.mode(
            _currentIndex == index ? AppColors.violetViolet100 : Colors.grey,
            BlendMode.srcIn,
          )),
      onPressed: () {
        _changePage(index);
      },
    );
  }

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
