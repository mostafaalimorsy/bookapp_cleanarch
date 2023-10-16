import 'package:bookapp_cleanarch/core/utils/dioHelper.dart';
import 'package:bookapp_cleanarch/features/home/data/model/book_model/book_model.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewBooks();
  Future<List<BookEntity>> fetchSearchBooks();
  Future<List<BookEntity>> fetchDetailsBooks();
}

class HomeRemoteDataSourceImplement extends HomeRemoteDataSource {
  final DIoHelper getData;

  HomeRemoteDataSourceImplement(this.getData);
  @override
  Future<List<BookEntity>> fetchDetailsBooks() {
    // TODO: implement fetchDetailsBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    return await getData.get(endPoint: "volumes?Fitering=free-ebooks&q=programming").then((value) {
      List<BookEntity> data = getBooksList(value);
      return data;
    }).catchError((e) {
      print("$fetchFeaturedBooks is $e");
      return e;
    });
  }

  List<BookEntity> getBooksList(Map<String, dynamic> value) {
    List<BookEntity> data = [];
    for (var elements in value['items']) {
      data.add(BookModel.fromJson(elements));
    }
    return data;
  }

  @override
  Future<List<BookEntity>> fetchNewBooks() async {
    return await getData.get(endPoint: "volumes?Fitering=free-ebooks&q=programming&Sorting=newwst").then((value) {
      List<BookEntity> data = getBooksList(value);
      return data;
    }).catchError((e) {
      print("$fetchNewBooks is $e");
      return e;
    });
  }

  @override
  Future<List<BookEntity>> fetchSearchBooks() {
    // TODO: implement fetchSearchBooks
    throw UnimplementedError();
  }
}
