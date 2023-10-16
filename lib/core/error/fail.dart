// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  final String msg;

  Failure({required this.msg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.msg});
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(msg: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(msg: 'Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(msg: 'Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode, e.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(msg: 'Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure(msg: 'No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure(msg: 'Opps There was an Error, Please try again');
      default:
        return ServerFailure(msg: 'Unexpected Error, Please try again!');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(msg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(msg: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(msg: 'Internal Server error, Please try later');
    } else {
      return ServerFailure(msg: 'Opps There was an Error, Please try again');
    }
  }
}
