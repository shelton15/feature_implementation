import 'package:flutter/material.dart';
import '../Models/wallet_model.dart';
import '../Services/api_service.dart';

class WalletProvider with ChangeNotifier {
  WalletModel? _wallet;

  WalletModel? get wallet => _wallet;

  Future<void> fetchWalletBalance() async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').get('/api/wallet/balance');
      _wallet = WalletModel.fromJson(response);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> topUpWallet(double amount) async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').post('/api/wallet/topup', {'amount': amount});
      _wallet = WalletModel.fromJson({'balance': response['balance']});
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
