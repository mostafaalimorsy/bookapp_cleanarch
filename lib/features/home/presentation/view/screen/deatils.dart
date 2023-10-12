import 'package:bookapp_cleanarch/features/home/presentation/view/widget/deatilsScreenWidget/bookDeatils.dart';
import 'package:flutter/material.dart';

class Deatils extends StatelessWidget {
  const Deatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetails(),
    );
  }
}
