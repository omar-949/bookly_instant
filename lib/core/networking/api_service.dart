import 'package:dio/dio.dart';

class ApiService {
final Dio dio ;
  final _baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  ApiService(this.dio);
  Future<Map<String,dynamic>> get({required String endPoints,Map<String,dynamic>? query})async{
    var response = await dio.get("$_baseUrl$endPoints",queryParameters: query);
    return response.data;

  }
}