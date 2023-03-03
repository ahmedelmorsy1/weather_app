import 'package:dio/dio.dart';

class ApiRepo {
  final String url;
  Map<String, dynamic>? payload;

  ApiRepo({required this.url, this.payload});

  final Dio _dio = Dio();

  void getData({
    Function()? beforeSend,
    Function(Map<String, dynamic> data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio.get(url, queryParameters: payload).then((response) {
      if (onSuccess != null) {
        onSuccess(response.data);
      }
    }).catchError((error) {
      onError!(error);
    });
  }
}