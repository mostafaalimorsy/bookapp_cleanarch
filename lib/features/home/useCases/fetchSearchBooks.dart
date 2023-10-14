// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchSearchBooks {
  final HomeRepo homeRepo;

  FetchSearchBooks(this.homeRepo);

  Future<Either<Fail, List<BookEntity>>> fetchSearchBooks() {
    return homeRepo.fetchSearchBooks();
  }
}
