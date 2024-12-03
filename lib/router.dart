import 'package:flutter/material.dart';
import 'Views/Auth/login_view.dart';
import 'Views/Dashboard/dashboard_view.dart';
import 'Views/Dashboard/wallet_view.dart';
import 'Views/Dashboard/nfc_view.dart';
import 'Views/Dashboard/gift_card_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardView());
      case '/wallet':
        return MaterialPageRoute(builder: (_) => const WalletView());
      case '/nfc':
        return MaterialPageRoute(builder: (_) => const NfcCardView());
      case '/giftcards':
        return MaterialPageRoute(builder: (_) => const GiftCardView());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text('Unknown Route'))));
    }
  }
}
