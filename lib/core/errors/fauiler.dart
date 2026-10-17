import 'package:dio/dio.dart';

sealed class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with API server');
      case DioExceptionType.badResponse:
        if (dioException.response != null) {
          return ServerFailure.fromResponce(dioException.response!.statusCode!, dioException.response!.data);
        } else {
          return ServerFailure('Unexpected error with API server');
        }
      case DioExceptionType.cancel:
        return ServerFailure('Unexpected error with API server');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error with API server');
      case DioExceptionType.transformTimeout:
        return ServerFailure('Transform timeout with API server');
    }
  }

  factory ServerFailure.fromResponce(
     int statusCode,
    Map<String, dynamic> messageError,
  ) {
    switch (statusCode) {
      case 400:
        return ServerFailure(messageError["error"]["message"]);
      case 401:
        return ServerFailure(messageError["error"]["message"]);
      case 403:
        return ServerFailure(messageError["error"]["message"]);
      case 404:
        return ServerFailure(messageError["error"]["message"]);
      case 500:
        return ServerFailure(messageError["error"]["message"]);
      default:
        return ServerFailure(messageError["error"]["message"]);
    }

  }
}

class CacheFailure extends Failure {
  CacheFailure(super.errorMessage);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.errorMessage);
}

class TimeoutFailure extends Failure {
  TimeoutFailure(super.errorMessage);
}
