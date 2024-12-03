import '../Services/api_service.dart';

class WalletController {
  Future<double?> fetchWalletBalance() async {
    return await ApiService().getWalletBalance();
  }

  Future<double?> topUpWallet(double amount) async {
    return await ApiService().topUpWallet(amount);
  }
}
