import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:montra_ui/presentations/routes/routes.dart';

import 'presentations/bloc/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  final routes = await createRouter(isScriptsEnabled: false);

  runApp(MyApp(
    routes: routes,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, this.routes});

  final GoRouter? routes;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        // final goRouter = setupRouter();
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            appBarTheme: const AppBarTheme(centerTitle: true),
            useMaterial3: true,
          ),
          routerConfig: widget.routes,
          // home: const EditAccountScreen(),
        );
      },
    );
  }
}
