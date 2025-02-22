import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../utils/constants_manager.dart';

// @lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args) {
          // don't print requests with uris containing '/posts'
          if (options.path.contains('/posts')) {
            return false;
          }
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        }));
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? param,
    Map<String, dynamic>? headers
  }) async {
    return dio.get(
        AppConstants.baseUrl+endPoint,
        queryParameters: param,
        options: Options(headers: headers)
    );
  }

  Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers
  }) async {
    return dio.post(
        AppConstants.baseUrl+endPoint,
        data: body,
        options: Options(headers: headers)
    );
  }
  ///////////////////////////// payment api /////////////////////////
  Future<Response> getPaymentData({
    required String endPoint,
    required Map<String, dynamic>? param,
    Map<String, dynamic>? headers
  }) async {
    return dio.get(
        AppConstants.paymentBaseUrl+endPoint,
        queryParameters: param,
        options: Options(headers: headers)
    );
  }

  Future<Response> postPaymentData({
    required String endPoint,
    required Map<String, dynamic>? body,
    Map<String, dynamic>? headers
  }) async {
    return dio.post(
        AppConstants.paymentBaseUrl+endPoint,
        data: body,
        options: Options(headers: headers)
    );
  }
}
