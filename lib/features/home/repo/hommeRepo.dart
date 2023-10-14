// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewBooks();
  Future<List<BookEntity>> fetchSearchBooks();
  Future<List<BookEntity>> fetchDetailsBooks();
}
