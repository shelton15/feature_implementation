import 'package:flutter/material.dart';
import 'Providers/auth_provider.dart';
import 'Providers/wallet_provider.dart';
import 'Views/Auth/login_view.dart';
import 'Views/Dashboard/dashboard_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const DimplesPayApp());
}

class DimplesPayApp extends StatelessWidget {
  const DimplesPayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => WalletProvider()),
      ],
      child: MaterialApp(
        title: 'DimplesPay',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginView(),
          '/Dashboard': (context) => DashboardView(),
        },
      ),
    );
  }
}