// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/presentation/view/widget/deatilsScreenWidget/deatilsBar.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/deatilsScreenWidget/deatilsItem.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/featuerListView.dart';
import 'package:flutter/material.dart';

import 'customDeatilsAppBar.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDetailsAppBar(),
        const DeatilsItem(),
        const DeatilsBar(),
        spesificText(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 7,
          child: const FeatureListView(),
        ),
      ],
    );
  }

  Widget spesificText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Align(
          alignment: Alignment.centerLeft, child: Text("You can also like")),
    );
  }
}
