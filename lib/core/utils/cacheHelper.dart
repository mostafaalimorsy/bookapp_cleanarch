import 'package:bookapp_cleanarch/core/const/const.dart';
import 'package:bookapp_cleanarch/features/home/domin/entity/bookEntity.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class CacheHelper {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(BookEntityAdapter());
    await Hive.openBox(kFeatureBoc);
  }

  static void saveDataLocally(List<BookEntity> data, boxName) {
    var box = Hive.box(boxName);
    box.addAll(data);
  }
}
