// ignore_for_file: file_names

class BookEntity {
  final String bookId;
  final String? img;
  final String title;
  final String? authorName;
  final num? price;
  final num rating;

  BookEntity(
      {required this.bookId,
      required this.img,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating});
}
