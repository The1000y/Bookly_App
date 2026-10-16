import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiServices(this._dio);

  Future<Map<String, dynamic>> fetchNewsetBooks({
    required String endPoint,
  }) async {
    Map<String, dynamic> queryParameters = {
      'q': 'Programming',
      'key': AppStrings.apiKey,
      'filter': 'free-ebooks',
      'orderBy': 'newest',
    };

    var responce = await _dio.get(
      '$_baseUrl$endPoint',
      queryParameters: queryParameters,
    );
    // return BookModel.fromJson(responce.data);
    return responce.data;
  }
}
