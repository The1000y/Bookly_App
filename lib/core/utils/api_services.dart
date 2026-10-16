import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(this.dio);

  Future<Map<String, dynamic>> fetchFeatureBooks({required String endPoint}) async {
    Map<String, dynamic> queryParameters = {
      'printType': 'books',
      'maxResults': 10,
      'q':'programming',
    };
    var responce = await dio.get('$baseUrl$endPoint' ,queryParameters: queryParameters);
    // return BookModel.fromJson(responce.data);
    return responce.data;
  }
}
