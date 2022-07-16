abstract class HttpClient {
  Future<HttpResponse> request({required String url, required String method, Map? body});
}

class HttpResponse {
  final dynamic body;
  final int? statusCode;

  HttpResponse({
    required this.body,
    required this.statusCode,
  });
}
