import '../Providers/nfc_provider.dart';

class NfcCardController {
  final NfcProvider nfcProvider;

  NfcCardController({required this.nfcProvider});

  Future<void> activateCard() async {
    await nfcProvider.activateNfcCard();
  }

  Future<void> topUpCard(double amount) async {
    await nfcProvider.topUpNfcCard(amount);
  }

  Future<void> deductCard(double amount) async {
    await nfcProvider.deductFromNfcCard(amount);
  }
}
