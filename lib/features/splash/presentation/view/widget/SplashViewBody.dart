// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/const/const.dart';
import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/core/utils/assts.dart';
import 'package:bookapp_cleanarch/features/splash/presentation/view/widget/SlididingText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(KTranstationDuration, () {
      GoRouter.of(context).push(AppRouter.kHome);
      // Get.to(() => const Home(), transition: KTranstationAnimation);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          fit: BoxFit.contain,
          height: MediaQuery.sizeOf(context).height / 15,
        ),
        const SizedBox(
          height: 20,
        ),
        AnimationText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
