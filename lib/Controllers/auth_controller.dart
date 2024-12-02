import '../Services/api_service.dart';
import '../Models/user_model.dart';

class AuthController {
  Future<User?> login(String email, String password) async {
    try {
      final response = await ApiService.post('/api/login', {
        'email': email,
        'password': password,
      });
      return User.fromJson(response);
    } catch (e) {
      print('Error during login: $e');
      return null;
    }
  }
}
