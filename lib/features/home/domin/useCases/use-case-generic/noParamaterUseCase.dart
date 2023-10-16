// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

abstract class UseCase<Type> {
  Future<Either<Fail, Type>> execute();
}
