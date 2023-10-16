// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Argument> {
  Future<Either<Fail, Type>> execute([Argument arg]);
}
