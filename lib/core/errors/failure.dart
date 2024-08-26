import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errormessage;

  Failure(this.errormessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errormessage);
  factory ServerFailure.fromDioerror(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with Api');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with Api');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive Timeout with Api');
      case DioExceptionType.badCertificate:
        return ServerFailure('incorrect certificate as configured with Api');
      case DioExceptionType.badResponse:
        return ServerFailure.frombadrespons(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Apiservev Was cansel ');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection,please try later!');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('unexpected Error ,please try again!');
      default:
        return ServerFailure('opps there was error,please try again');
    }
  }
  factory ServerFailure.frombadrespons(int statescode, dynamic respons) {
    if (statescode == 400 || statescode == 401 || statescode == 403) {
      return ServerFailure(respons['error']['message']);
    } else if (statescode == 404) {
      return ServerFailure('Your request not found ,please try later!');
    } else if (statescode == 500) {
      return ServerFailure('Internet servier Error,please try later!');
    }

    return ServerFailure('opps there was error,please try again');
  }
}
