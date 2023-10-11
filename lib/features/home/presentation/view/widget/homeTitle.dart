import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 23),
      child: Text(
        "Best Seller",
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
