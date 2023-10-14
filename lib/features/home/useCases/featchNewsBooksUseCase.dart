// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooks {
  final HomeRepo homeRepo;

  FetchNewsBooks(this.homeRepo);

  Future<Either<Fail, List<BookEntity>>> fetchNewBooks() {
    return homeRepo.fetchNewBooks();
  }
}
