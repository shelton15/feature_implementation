import 'package:flutter/material.dart';
import 'Views/Auth/login_view.dart';
import 'Views/Dashboard/dashboard_view.dart';

void main() {
  runApp(const DimplesPayApp());
}

class DimplesPayApp extends StatelessWidget {
  const DimplesPayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feature Implementation',
      initialRoute: '/',
      routes: {
        '/':(context) => LoginView(),
        '/Dashboard':(context) => DashboardView(),
      },
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
    );
  }
}