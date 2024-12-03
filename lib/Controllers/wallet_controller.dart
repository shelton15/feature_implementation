import '../Providers/wallet_provider.dart';

class WalletController {
  final WalletProvider walletProvider;

  WalletController({required this.walletProvider});

  Future<void> fetchBalance() async {
    await walletProvider.fetchWalletBalance();
  }

  Future<void> topUp(double amount) async {
    await walletProvider.topUpWallet(amount);
  }
}
