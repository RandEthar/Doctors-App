import 'package:dio/dio.dart';
import 'package:doctors_app/core/helpers/constant.dart';
import 'package:doctors_app/core/helpers/sheard_pref_healper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();

      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      await addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
    ));
  }

  static Future<void> addDioHeaders() async {
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization":
          "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}"
    };
  }

  static void setTokenAfterLogin({required String token}) {
    dio?.options.headers = {"Authorization": "Bearer $token"};
  }
}
