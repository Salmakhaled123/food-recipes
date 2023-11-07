import 'package:dio/dio.dart';
class ApiService{
  final String _baseUrl='https://www.themealdb.com/api/json/v1/1/';
  Dio ? dio;
 ApiService(this.dio);
  Future<Map<String,dynamic>>get(String endpoint)async
  {
    Response result=await dio!.get('$_baseUrl$endpoint');
    return result.data;
  }
}