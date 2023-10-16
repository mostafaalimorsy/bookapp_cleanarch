// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bookapp_cleanarch/core/utils/appRouter.dart';

class BestSellerListView extends StatelessWidget {
  final bool isSearch;
  const BestSellerListView({
    Key? key,
    this.isSearch = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: isSearch
          ? MediaQuery.sizeOf(context).height / 1.2
          : MediaQuery.sizeOf(context).height / 2.2,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 10,
        physics: isSearch
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return bestSellerItem(context);
        },
      ),
    );
  }

  Widget bestSellerItem(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDealtils);
      },
      child: Padding(
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                  ),
                ),
              ),
              //title
              itemTitle(context)
            ],
          ),
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
