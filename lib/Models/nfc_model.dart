class NFCModel {
  final String cardId;
  final String status;
  final double balance;

  NFCModel({required this.cardId, required this.status, this.balance = 0.0});

  factory NFCModel.fromJson(Map<String, dynamic> json) {
    return NFCModel(
      cardId: json['card_id'],
      status: json['status'],
      balance: json.containsKey('card_balance') ? json['card_balance'].toDouble() : 0.0,
    );
  }
}
