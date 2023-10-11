// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 23),
      child: Text(
        "Best Seller",
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
