import 'package:bookapp_cleanarch/features/home/presentation/view/widget/customAppBar.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/featuerListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatureListView(),
      ],
    );
  }
}
