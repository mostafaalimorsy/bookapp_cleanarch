import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';

abstract class HomeLocalDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewBooks();
  Future<List<BookEntity>> fetchSearchBooks();
  Future<List<BookEntity>> fetchDetailsBooks();
}

class HomeLocalDataSourceImplement extends HomeLocalDataSource {
  @override
  Future<List<BookEntity>> fetchDetailsBooks() {
    // TODO: implement fetchDetailsBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewBooks() {
    // TODO: implement fetchNewBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchSearchBooks() {
    // TODO: implement fetchSearchBooks
    throw UnimplementedError();
  }
}
