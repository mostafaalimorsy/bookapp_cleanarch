import 'package:bookapp_cleanarch/features/home/presentation/view/widget/searchScreen/searchbody.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Searchbody(),
    );
  }
}
