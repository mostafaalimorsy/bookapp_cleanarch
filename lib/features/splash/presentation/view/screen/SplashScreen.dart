import 'package:bookapp_cleanarch/core/style/color/colorManager.dart';
import 'package:bookapp_cleanarch/features/splash/presentation/view/widget/SplashViewBody.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
