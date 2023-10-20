import 'package:bloc/bloc.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchFeatueredBooksUseCase.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchNewsBooksUseCase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.featuredBooks, required this.newBooks}) : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  final FetchFeaturedBooks featuredBooks;
  final FetchNewsBooks newBooks;
  List<BookEntity> featuredBooksData = [];
  int? selectedFeatureBooksData;
  List<BookEntity> newsData = [];
  int selectedNewsBooksData = 0;
  bool isNewsPage = false;
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
        featuredBooksData = books;
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
        newsData = books;
        emit(
          HomeNewsBooksSuccess(books: books),
        );
      },
    );
  }
}
