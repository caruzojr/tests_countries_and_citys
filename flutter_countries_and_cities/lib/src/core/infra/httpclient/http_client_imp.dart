import 'package:dio/dio.dart';

import 'http.dart';

class DioClientImp implements HttpClient {
  final Dio client = Dio();

  @override
  Future<HttpResponse> request({required String url, required String method, Map? body}) async {
    final Map<String, String> headers = {'content-type': 'application/json', 'accept': 'application/json'};
    late Response response;

    // Set default configs
    // client.options.baseUrl = '';
    client.interceptors.add(CustomInterceptors());
    client.options.headers = headers;
    client.options.connectTimeout = 10000;
    client.options.receiveTimeout = 8000;

    try {
      if (method == 'get') {
        response = await client.get(url);
      } else if (method == 'post') {
        response = await client.post(url, data: body);
      }
    } on DioError catch (error) {
      return _handleErrorResponse(error.response?.statusCode);
    }
    return _handleResponse(response);
  }

  _handleResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 304) {
      return response.data.isEmpty ? null : HttpResponse(body: response.data, statusCode: response.statusCode);
    } else if (response.statusCode == 204) {
      return null;
    }
  }

  _handleErrorResponse(int? statusCode) {
    if (statusCode == 400) {
      throw HttpError.badRequest;
    } else if (statusCode == 401) {
      throw HttpError.unauthorized;
    } else if (statusCode == 403) {
      throw HttpError.forbidden;
    } else if (statusCode == 404) {
      throw HttpError.notFound;
    } else {
      throw HttpError.serverError;
    }
  }
}
