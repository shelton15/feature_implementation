import 'package:flutter/material.dart';
import '../Models/user_model.dart';
import '../Services/api_service.dart';

class AuthViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  User? _user;

  User? get user => _user;

  Future<void> login(String email, String password) async {
    try {
      _user = await _apiService.login(email, password);
      notifyListeners();
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }
}
