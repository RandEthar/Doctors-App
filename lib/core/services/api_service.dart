import 'package:dio/dio.dart';
import 'package:doctors_app/core/services/api_constants.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await dio.get("${ApiConstants.apiBaseUrl}$endPoint");
    return respons.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map<String, dynamic> data}) async {
    var respons =
        await dio.post("${ApiConstants.apiBaseUrl}$endPoint", data: data);
    return respons.data;
  }
}
