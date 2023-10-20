// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeatilsItem extends StatelessWidget {
  const DeatilsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit getData = HomeCubit.get(context);
        bool isNewsPage = getData.isNewsPage;
        int? selectedIndex = isNewsPage ? getData.selectedNewsBooksData : getData.selectedFeatureBooksData;

        BookEntity data = isNewsPage ? getData.newsData[selectedIndex!] : getData.featuredBooksData[selectedIndex!];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            SizedBox(
              height: 250,
              width: 150,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("${data.img}"), fit: BoxFit.fill),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  data.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "${data.authorName}",
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_sharp,
                  color: Colors.amber,
                ),
                Text("${data.rating} "),
                const Text("(1000)"),
              ],
            )
          ],
        );
      },
    );
  }
}
