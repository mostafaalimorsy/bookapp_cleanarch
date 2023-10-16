// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class DIoHelper {
  final Dio dio;
  DIoHelper({
    required this.dio,
  });
  final url = "https://www.googleapis.com/books/v1/";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$url$endPoint");
    return response.data;
  }
}
