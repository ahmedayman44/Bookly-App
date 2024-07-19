// ignore: file_names

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad response with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error with ApiServer');

      // case DioExceptionType.response:
      //   return ServerFailure.fromResponse(
      //     dioException.response!.statusCode!,
      //     dioException.response!.data,
      //   );

      // case DioExceptionType.other:
      //   if (dioException.error.contains('SocketException')) {
      //     return ServerFailure('No Internet Connection');
      //   }
      //   return ServerFailure('Unexpected error occurred');

      // default:
      //   return ServerFailure('Opps There was an error. Please try again!');
    }
  }

  // factory ServerFailure.fromResponse(int statusCode, dynamic response) {
  //   if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
  //     return ServerFailure(response['error']['message']);
  //   } else if (statusCode == 404) {
  //     return ServerFailure('Your request not found. Please try again!');
  //   } else if (statusCode == 500) {
  //     return ServerFailure('Internal server error. Please try again!');
  //   } else {
  //     return ServerFailure('Oops There was an error. Please try again!');
  //   }
  // }
}
