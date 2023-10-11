import 'package:bookapp_cleanarch/features/home/presentation/view/widget/customAppBar.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/featuerListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeatureListView(),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 23),
          child: Text(
            "Best Seller",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        )
      ],
    );
  }
}
