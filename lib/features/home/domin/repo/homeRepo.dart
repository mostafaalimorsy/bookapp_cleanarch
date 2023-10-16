// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/error/fail.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //to return fail if there is fail request that on left side and the right for success request using dartz package
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks();
  Future<Either<Failure, List<BookEntity>>> fetchSearchBooks();
  Future<Either<Failure, List<BookEntity>>> fetchDetailsBooks();
}
