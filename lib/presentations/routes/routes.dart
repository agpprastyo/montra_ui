import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:montra_ui/data/models/user.dart';
import 'package:montra_ui/data/repository/user_repository.dart';
import 'package:montra_ui/presentations/routes/route.dart';
import 'package:montra_ui/presentations/screens/auth/forgot_password/forgot_password.dart';
import 'package:montra_ui/presentations/screens/auth/sign_in/sign_in_screen.dart';
import 'package:montra_ui/presentations/screens/auth/sign_up/sign_up_screen.dart';
import 'package:montra_ui/presentations/screens/onboarding/onboarding_screen.dart';

import '../screens/navigation/bottom_nav.dart';

Future<GoRouter> createRouter({required bool isScriptsEnabled}) async {
  // Use async/await to get the user
  final UserRepository userRepository = UserRepository();

  final User? currentUser = await userRepository.getUser();
  final bool userExists = currentUser != null;
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation:
    userExists ? AppRoute.initial.path : AppRoute.onboarding.path,
    // redirect: (context, state) =>
    //     userExists ? AppRoute.initial.path : AppRoute.onboarding.path,

    // redirect: (context, state) {
    //   if (userExists) {
    //     return AppRoute.onboarding.path;
    //   }
    //   return AppRoute.initial.path;
    // },

    routes: [
      GoRoute(
        path: AppRoute.initial.path,
        builder: (context, state) => const BottomNav(),
      ),
      GoRoute(
        path: AppRoute.onboarding.path,
        pageBuilder: (context, state) =>
            customUpTransitionPage(state, const OnboardingScreen()),
      ),
      GoRoute(
        path: AppRoute.signIn.path,
        pageBuilder: (context, state) =>
            customUpTransitionPage(state, const SignInScreen()),
      ),
      GoRoute(
        path: AppRoute.signUp.path,
        pageBuilder: (context, state) =>
            customUpTransitionPage(state, const SignUpScreen()),
      ), GoRoute(
        path: AppRoute.forgotPassword.path,
        pageBuilder: (context, state) =>
            customUpTransitionPage(state, const ForgotPassword()),
      ),
    ],
  );
}

CustomTransitionPage<void> customUpTransitionPage(GoRouterState state, child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 3000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween =
      Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
