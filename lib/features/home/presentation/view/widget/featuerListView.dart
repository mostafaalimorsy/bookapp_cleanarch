import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .3,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemBuilder: (BuildContext context, int index) {
            return itemForBuild();
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

  AspectRatio itemForBuild() {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage(""), fit: BoxFit.fill),
          color: Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
