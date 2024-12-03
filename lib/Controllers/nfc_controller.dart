import '../Services/api_service.dart';

class NFCController {
  Future<bool> activateNFC(String cardId) async {
    return await ApiService().activateNFC(cardId);
  }

  Future<double?> topUpCard(double amount) async {
    return await ApiService().topUpNFC(amount);
  }

  Future<double?> deductCard(double amount, String pin) async {
    return await ApiService().deductNFC(amount, pin);
  }
}
