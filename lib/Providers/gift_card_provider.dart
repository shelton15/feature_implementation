import 'package:flutter/material.dart';
import '../Models/gift_card_model.dart';
import '../Services/api_service.dart';

class GiftCardProvider with ChangeNotifier {
  List<GiftCardModel> _giftCards = [];

  List<GiftCardModel> get giftCards => _giftCards;

  Future<void> fetchGiftCards() async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').get('/api/giftcards');
      _giftCards = (response['gift_cards'] as List).map((card) => GiftCardModel.fromJson(card)).toList();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> redeemGiftCard(String code) async {
    try {
      await ApiService(baseUrl: 'https://mockapi.com').post('/api/giftcards/redeem', {'code': code});
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
