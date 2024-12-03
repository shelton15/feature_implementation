class NFCCard {
  final String cardId;
  final double balance;

  NFCCard({required this.cardId, required this.balance});

  factory NFCCard.fromJson(Map<String, dynamic> json) {
    return NFCCard(
      cardId: json['card_id'], 
      balance: json['card_balance']);
  }
}
