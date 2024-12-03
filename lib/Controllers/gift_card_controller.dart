import '../Services/api_service.dart';

class GiftCardController {
  Future<List<dynamic>> fetchGiftCards() async {
    return await ApiService().getGiftCards();
  }

  Future<bool> purchaseGiftCard(double amount) async {
    return await ApiService().purchaseGiftCard(amount);
  }

  Future<bool> redeemGiftCard(String code) async {
    return await ApiService().redeemGiftCard(code);
  }
}
