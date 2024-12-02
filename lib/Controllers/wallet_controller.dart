import '../Services/api_service.dart';
import '../Models/wallet_model.dart';

class WalletController {
  Future<Wallet?> getWalletBalance() async {
    try {
      final response = await ApiService.get('/api/wallet/balance');
      return Wallet.fromJson(response);
    } catch (e) {
      print('Error fetching wallet balance: $e');
      return null;
    }
  }

  Future<bool> topUpWallet(double amount) async {
    try {
      final response = await ApiService.post('/api/wallet/topup', {
        'amount': amount,
      });
      return response['success'];
    } catch (e) {
      print('Error during wallet top-up: $e');
      return false;
    }
  }
}
