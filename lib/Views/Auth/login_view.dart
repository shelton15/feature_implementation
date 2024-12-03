import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Providers/auth_provider.dart';


class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  await context.read<AuthProvider>().login(emailController.text, passwordController.text);
                  Navigator.pushNamed(context, '/dashboard');
                } catch (error) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Failed')));
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
