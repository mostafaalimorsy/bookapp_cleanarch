// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/core/utils/assts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 24,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearch);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
              ))
        ],
      ),
    );
  }
}
