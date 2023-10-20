// import 'package:bookapp_cleanarch/features/home/presentation/cubit/home_cubit.dart';
// import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/featuerListView.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class FeaturedBlocBuilder extends StatelessWidget {
//   const FeaturedBlocBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       builder: (context, state) {
//         if (state is HomeFeaturedBooksSuccess) {
//           return const FeatureListView();
//         } else if (state is HomeFeaturedBooksFailure) {
//           return Text(state.errorMsg);
//         } else {
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
