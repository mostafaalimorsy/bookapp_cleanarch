import 'package:bookapp_cleanarch/core/style/theme/theme.dart';
import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/core/utils/cacheHelper.dart';
import 'package:bookapp_cleanarch/core/utils/dioHelper.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DIoHelper.init();
  CacheHelper.init();

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
