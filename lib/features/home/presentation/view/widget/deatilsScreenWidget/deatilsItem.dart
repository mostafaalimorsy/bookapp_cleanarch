// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DeatilsItem extends StatelessWidget {
  const DeatilsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image
        SizedBox(
          height: 350,
          width: 250,
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
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "The Jungle Book",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "J.K Kiliping",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_sharp,
              color: Colors.amber,
            ),
            Text("4.8 "),
            Text("(1000)"),
          ],
        )
      ],
    );
  }
}
