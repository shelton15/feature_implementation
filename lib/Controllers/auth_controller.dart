import '../Providers/auth_provider.dart';

class AuthController {
  final AuthProvider authProvider;

  AuthController({required this.authProvider});

  Future<void> login(String email, String password) async {
    await authProvider.login(email, password);
  }
}
