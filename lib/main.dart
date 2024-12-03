import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/auth_provider.dart';
import 'Views/Auth/login_view.dart';
import 'Views/Dashboard/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        // Add other providers here
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LoginView(),
          '/dashboard': (context) => DashboardView(),
        },
      ),
    );
  }
}
