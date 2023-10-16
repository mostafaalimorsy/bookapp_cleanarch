// ignore_for_file: file_names

import 'package:bookapp_cleanarch/core/error/fail.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Argument> {
  Future<Either<Failure, Type>> execute([Argument arg]);
}
