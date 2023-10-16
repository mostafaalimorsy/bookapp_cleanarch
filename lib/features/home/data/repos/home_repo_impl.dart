// ignore_for_file: invalid_return_type_for_catch_error

import 'package:bookapp_cleanarch/core/error/fail.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/local/local.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/remote/remote.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/domin/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class HomeReposImplement extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeReposImplement({required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchDetailsBooks() {
    // TODO: implement fetchDetailsBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var bookList = homeLocalDataSource.fetchFeaturedBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      } else {
        return right(await homeRemoteDataSource.fetchFeaturedBooks());
      }
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks() async {
    try {
      var bookList = homeLocalDataSource.fetchNewBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      } else {
        return right(await homeRemoteDataSource.fetchNewBooks());
      }
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchSearchBooks() {
    // TODO: implement fetchSearchBooks
    throw UnimplementedError();
  }
}
