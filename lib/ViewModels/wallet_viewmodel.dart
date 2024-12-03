import 'package:flutter/material.dart';
import '../Models/wallet_model.dart';
import '../Services/api_service.dart';

class WalletViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  Wallet? _wallet;

  Wallet? get wallet => _wallet;

  Future<void> fetchWalletBalance() async {
    try {
      _wallet = await _apiService.fetchWalletBalance();
      notifyListeners();
    } catch (e) {
      throw Exception('Failed to fetch wallet balance: $e');
    }
  }
}
