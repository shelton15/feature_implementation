import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/user_model.dart';
import '../Models/wallet_model.dart';
import '../Models/nfc_model.dart';
import '../Models/gift_card_model.dart';

class ApiService {
  final String baseUrl = 'https://<your-mock-server-id>.mockapi.io/api';

  Future<User> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: jsonEncode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<Wallet> fetchWalletBalance() async {
    final response = await http.get(Uri.parse('$baseUrl/wallet/balance'));

    if (response.statusCode == 200) {
      return Wallet.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch wallet balance');
    }
  }

  Future<bool> topUpWallet(double amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/wallet/topup'),
      body: jsonEncode({'amount': amount}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to top-up wallet');
    }
  }

  Future<NFCModel> activateNFC() async {
    final response = await http.post(Uri.parse('$baseUrl/nfc/activate'));

    if (response.statusCode == 200) {
      return NFCModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to activate NFC');
    }
  }

  Future<NFCModel> topUpNFC(double amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/nfc/topup'),
      body: jsonEncode({'amount': amount}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return NFCModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to top-up NFC');
    }
  }

  Future<List<GiftCardModel>> fetchGiftCards() async {
    final response = await http.get(Uri.parse('$baseUrl/giftcards'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((item) => GiftCardModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch gift cards');
    }
  }
}
