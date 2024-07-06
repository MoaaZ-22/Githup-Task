import 'package:dio/dio.dart';
import 'package:githup_app/core/api/endpoints.dart';
import 'package:githup_app/core/utils/git_keys.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// this class is used to manage the dio requests
class DioHelper {
  /// dio instance
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      // you don't need to write timeout duration in each function
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/vnd.github.v3+json',
        'Authorization': 'Bearer ${GitKeys.accessToken}',
      },
    ),
  )..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        compact: false,
      ),
    );

  /// this method is used to get data from the server
  static Future<Response<dynamic>> getData({
    required String url,
    String? token,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    void Function(int, int)? onReceiveProgress,
  }) {
    dio.options.headers = headers;
    return dio.get(
      url,
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// this method is used to post data to the server
  static Future<Response<dynamic>> postData({
    required String? url,
    dynamic data,
    String? token,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) {
    dio.options.headers;
    return dio.post(
      url!,
      data: data,
      options: options,
      queryParameters: queryParameters,
    );
  }
}
