import 'package:bookapp_cleanarch/core/const/const.dart';
import 'package:bookapp_cleanarch/core/utils/cacheHelper.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewBooks();
}

class HomeLocalDataSourceImplement extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    List<BookEntity> data = CacheHelper.getDataLocally(kFeatureBox);
    return data;
  }

  @override
  List<BookEntity> fetchNewBooks() {
    List<BookEntity> data = CacheHelper.getDataLocally(kNewsBox);
    return data;
  }
}
