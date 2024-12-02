import '../Services/api_service.dart';
import '../Models/wallet_model.dart';

class WalletController {
  Future<Wallet> getWalletBalance() async {
    final response = await ApiService.get("/api/wallet/balance");
    return Wallet.fromJson(response);
  }

  Future<void> topUpWallet(double amount) async {
    await ApiService.post("/api/wallet/topup", {"amount": amount});
  }
}
