// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/screen/deatils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .3,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemBuilder: (BuildContext context, int index) {
            return itemForBuild(context);
          },
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }

  Widget itemForBuild(context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDealtils);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage(""), fit: BoxFit.fill),
            color: Colors.red,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
