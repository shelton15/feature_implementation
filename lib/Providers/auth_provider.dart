import 'package:flutter/material.dart';
import '../Models/user_model.dart';
import '../Services/api_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  Future<void> login(String email, String password) async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').post('/api/login', {
        'email': email,
        'password': password,
      });

      _user = UserModel.fromJson(response);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
