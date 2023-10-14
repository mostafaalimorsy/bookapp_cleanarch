// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooks {
  final HomeRepo homeRepo;

  FetchFeaturedBooks(this.homeRepo);
  Future<Either<Fail, List<BookEntity>>> fetchFeaturedBooks() async {
    return homeRepo.fetchFeaturedBooks();
  }

  Future<Either<Fail, List<BookEntity>>> fetchNewBooks() {
    return homeRepo.fetchNewBooks();
  }

  Future<Either<Fail, List<BookEntity>>> fetchSearchBooks() {
    return homeRepo.fetchSearchBooks();
  }

  Future<Either<Fail, List<BookEntity>>> fetchDetailsBooks() {
    return homeRepo.fetchDetailsBooks();
  }
}
