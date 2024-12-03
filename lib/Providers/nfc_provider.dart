import 'package:flutter/material.dart';
import '../Models/nfc_model.dart';
import '../Services/api_service.dart';

class NfcProvider with ChangeNotifier {
  NfcCardModel? _nfcCard;

  NfcCardModel? get nfcCard => _nfcCard;

  Future<void> activateNfcCard() async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').post('/api/nfc/activate', {});
      _nfcCard = NfcCardModel.fromJson(response);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> topUpNfcCard(double amount) async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').post('/api/nfc/topup', {'amount': amount});
      _nfcCard = NfcCardModel.fromJson({'card_id': _nfcCard!.cardId, 'balance': response['card_balance'], 'status': _nfcCard!.status});
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> deductFromNfcCard(double amount) async {
    try {
      final response = await ApiService(baseUrl: 'https://mockapi.com').post('/api/nfc/deduct', {'amount': amount});
      _nfcCard = NfcCardModel.fromJson({'card_id': _nfcCard!.cardId, 'balance': response['card_balance'], 'status': _nfcCard!.status});
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
