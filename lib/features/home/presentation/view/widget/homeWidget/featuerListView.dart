// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/features/home/presentation/cubit/home_cubit.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit getData = HomeCubit.get(context);
        return Padding(
          padding: const EdgeInsets.only(left: 22),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemBuilder: (BuildContext context, int index) {
                return itemForBuild(context, getData.featuredBooksData[index].img);
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
      },
    );
  }

  Widget itemForBuild(context, data) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDealtils);
      },
      child: CachedNetworkImage(
        imageUrl: data,
        imageBuilder: (context, imageProvider) => SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(data), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
