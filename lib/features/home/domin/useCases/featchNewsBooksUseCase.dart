// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/error/fail.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/domin/repo/homeRepo.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/use-case-generic/noParamaterUseCase.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooks extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchNewsBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> execute() async {
    return await homeRepo.fetchNewBooks();
  }
}
