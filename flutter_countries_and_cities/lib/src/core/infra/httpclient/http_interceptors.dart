// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('### =====> REQUEST LOGGER API <===== ###');
    print('### METHOD: ${options.method}');
    print('### PATH: ${options.path}');
    print('### BODY: ${options.data}');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('### =====> RESPONSE LOGGER API <===== ###');
    print('### STATUS CODE: ${response.statusCode}');
    print('### PATH: ${response.requestOptions.path}');
    print('### BODY: ${response.requestOptions.data}');

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('### =====> ERROR LOGGER API <===== ###');
    print('### STATUS CODE ERROR: ${err.response?.statusCode}');
    print('### PATH: ${err.requestOptions.path}');
    print('### BODY: ${err.response?.data}');

    return super.onError(err, handler);
  }
}
