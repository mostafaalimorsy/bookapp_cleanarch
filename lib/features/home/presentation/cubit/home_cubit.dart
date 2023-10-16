import 'package:bloc/bloc.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchFeatueredBooksUseCase.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchNewsBooksUseCase.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.featuredBooks, required this.newBooks}) : super(HomeInitial());

  final FetchFeaturedBooks featuredBooks;
  final FetchNewsBooks newBooks;
  Future<void> fetchFeatueBooks() async {
    emit(HomeFeaturedBooksLoading());
    var result = await featuredBooks.execute();
    result.fold(
      (failure) {
        emit(
          HomeFeaturedBooksFailure(errorMsg: failure.msg),
        );
      },
      (books) {
        emit(
          HomeFeaturedBooksSuccess(books: books),
        );
      },
    );
  }

  Future<void> fetchNewBooks() async {
    emit(HomeNewsBooksLoading());
    var result = await newBooks.execute();
    result.fold(
      (failure) {
        emit(
          HomeNewsBooksFailure(errorMsg: failure.msg),
        );
      },
      (books) {
        emit(
          HomeNewsBooksSuccess(books: books),
        );
      },
    );
  }
}
