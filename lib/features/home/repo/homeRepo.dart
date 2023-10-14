// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //to return fail if there is fail request that on left side and the right for success request using dartz package
  Future<Either<Fail, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Fail, List<BookEntity>>> fetchNewBooks();
  Future<Either<Fail, List<BookEntity>>> fetchSearchBooks();
  Future<Either<Fail, List<BookEntity>>> fetchDetailsBooks();
}
