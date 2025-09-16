import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      //red رجع ريسبونس لكن في خطأ
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad Response');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Something went wrong');
    }
  }
  factory ServerFailure.fromResponse(Response response) {
    if (response.statusCode == 404) {
      return ServerFailure('Your Request was Not Found,please try later');
    } else if (response.statusCode == 500) {
      return ServerFailure('there is a problem with Server,please try later');
    } else if (response.statusCode == 400 ||
        response.statusCode == 401 ||
        response.statusCode == 403) {
      return ServerFailure(response.data['error']['message']);
    } else {
      return ServerFailure('There is an error,please try later');
    }
  }
}
