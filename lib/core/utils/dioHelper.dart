// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_string_interpolations
import 'package:dio/dio.dart';

class DIoHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.googleapis.com/books/v1/',
      receiveDataWhenStatusError: true,
    ));
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio!.get("$endPoint");
    return response.data;
  }
}
