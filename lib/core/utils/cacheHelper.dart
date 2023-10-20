import 'package:bookapp_cleanarch/core/const/const.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class CacheHelper {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(BookEntityAdapter());
    await Hive.openBox<BookEntity>(kFeatureBox);
    await Hive.openBox<BookEntity>(kNewsBox);
  }

  static void saveDataLocally(List<BookEntity> data, boxName) {
    var box = Hive.box<BookEntity>(boxName);
    box.addAll(data);
  }

  static List<BookEntity> getDataLocally(boxName) {
    List<BookEntity> data = [];
    var box = Hive.box<BookEntity>(boxName);
    data = box.values.toList();
    return data;
  }
}
