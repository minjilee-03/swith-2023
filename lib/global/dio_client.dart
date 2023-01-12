import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  late Dio dio;

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    dio = Dio();

    dio.interceptors.add(InterceptorsWrapper(onRequest: (
      RequestOptions options,
      handler,
    ) {
      options.baseUrl = 'https://problem.swith.kr/api';
      options.connectTimeout = 5000;
      options.receiveTimeout = 3000;

      return handler.next(options);
    }, onResponse: (Response response, handler) async {
      return handler.next(response);
    }, onError: (DioError e, handler) async {
      return handler.next(e);
    }));
  }
}
