// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: MediaQuery.sizeOf(context).height / 2.2,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return bestSellerItem(context);
        },
      ),
    );
  }

  Padding bestSellerItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            //image
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  height: 100,
                  width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                ),
              ),
            ),
            //title
            itemTitle(context)
          ],
        ),
      ),
    );
  }

  Padding itemTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 2,
            child: Text(
              "Harry Potter and the Globlet of fire",
              maxLines: 2,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "J.K Rowling",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "19.9 \$",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 5,
              ),
              const Icon(
                Icons.star_sharp,
                color: Colors.amber,
              ),
              const Text("4.8 "),
              const Text("(1000)"),
            ],
          )
        ],
      ),
    );
  }
}
