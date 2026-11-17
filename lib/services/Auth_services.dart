import 'package:dio/dio.dart';
import 'package:flutter_application_6/Models/Auth.dart';

class AuthServices {
  static Dio dio = Dio();

  static Future<Auth> login({
    required String email,
    required String password,
  }) async {
    try {
      Response response = await dio.post(
        "https://elsewedyteam.runasp.net/api/Login/CheckUser",
        data: {
          "Email": email,
          "PassWord": password,
        },
      );

      return Auth.fromJson(response.data);
    } on DioException catch (dioError) {
      throw Exception(dioError.message);
    } catch (otherException) {
      throw Exception("other Error: ${otherException.toString()}");
    }
  }

  static Future<Auth> register({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    try {
      Response response = await dio.post(
        "https://elsewedyteam.runasp.net/api/Register/AddUser",
        data: {
          "name": name,
          "Email": email,
          "PassWord": password,
          "Phone": phone,
        },
      );
      return Auth.fromJson(response.data);
    } on DioException catch (dioError) {
      throw Exception(dioError.message);
    } catch (otherException) {
      throw Exception("other Error: ${otherException.toString()}");
    }
  }
}