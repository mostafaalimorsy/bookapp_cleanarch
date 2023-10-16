import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewBooks();
  Future<List<BookEntity>> fetchSearchBooks();
  Future<List<BookEntity>> fetchDetailsBooks();
}

class HomeRemoteDataSourceImplement extends HomeRemoteDataSource {
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
