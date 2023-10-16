// ignore_for_file: file_names

import 'package:hive/hive.dart';
part 'bookEntity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? img;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? authorName;
  @HiveField(4)
  final String? price;
  @HiveField(5)
  final num? rating;

  BookEntity(
      {required this.bookId,
      required this.img,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating});
}
