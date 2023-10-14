// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:bookapp_cleanarch/features/home/repo/homeRepo.dart';
import 'package:bookapp_cleanarch/features/home/useCases/use-case-generic/noParamaterUseCase.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooks extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchFeaturedBooks(this.homeRepo);

  @override
  Future<Either<Fail, List<BookEntity>>> execute() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
