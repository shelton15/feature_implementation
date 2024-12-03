import '../services/authentication_service.dart';

class AuthController {
  Future<String?> login(String email, String password) async {
    return await AuthenticationService().login(email, password);
  }
}
