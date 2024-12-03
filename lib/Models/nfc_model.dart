class NfcCardModel {
  final String cardId;
  final double balance;
  final String status;

  NfcCardModel({required this.cardId, required this.balance, required this.status});

  factory NfcCardModel.fromJson(Map<String, dynamic> json) {
    return NfcCardModel(
      cardId: json['card_id'],
      balance: json['card_balance'].toDouble(),
      status: json['status'],
    );
  }
}
