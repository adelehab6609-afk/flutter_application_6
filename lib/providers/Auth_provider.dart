import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/Models/Auth.dart';
import 'package:flutter_application_6/services/Auth_services.dart';

class AuthProvider extends ChangeNotifier {
  Auth? auth;

  Future<void> login({required String email, required String password}) async {
    auth = await AuthServices.login(email: email, password: password);
    notifyListeners();
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    auth = await AuthServices.register(
      name: name,
      email: email,
      password: password,
      phone: phone,
    );
    notifyListeners();
  }
}