// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/presentation/cubit/home_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit getData = HomeCubit.get(context);

        return LimitedBox(
          maxHeight: isSearch ? MediaQuery.sizeOf(context).height / 1.2 : MediaQuery.sizeOf(context).height / 2.2,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: getData.newsData.length,
            physics: isSearch ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () {
                    getData.isNewsPage = true;

                    getData.selectedNewsBooksData = 0;
                    getData.selectedNewsBooksData = index;
                    GoRouter.of(context).push(AppRouter.kHomeDealtils);
                  },
                  child: bestSellerItem(context, getData.newsData[index]));
            },
          ),
        );
      },
    );
  }

  Widget bestSellerItem(BuildContext context, data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            //image

            CachedNetworkImage(
              imageUrl: data.img,
              imageBuilder: (context, imageProvider) => SizedBox(
                height: 100,
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Container(
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(data.img), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.amber,
                    ),
                  ),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            //title
            itemTitle(context, data)
          ],
        ),
      ),
    );
  }

  Widget itemTitle(BuildContext context, data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 2,
            child: Text(
              data.title,
              maxLines: 2,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            data.authorName,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "${data.price} \$",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 5,
              ),
              const Icon(
                Icons.star_sharp,
                color: Colors.amber,
              ),
              Text("${data.rating} "),
              const Text("(1000)"),
            ],
          )
        ],
      ),
    );
  }
}
