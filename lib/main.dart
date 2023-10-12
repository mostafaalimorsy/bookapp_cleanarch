import 'package:bookapp_cleanarch/core/style/theme/theme.dart';
import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/features/splash/presentation/view/screen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: defaultTheme,
      routerConfig: AppRouter.router,
      // home: const SplashScreen(),
    );
  }
}
