class GiftCard {
  final String id;
  final double value;

  GiftCard({required this.id, required this.value});

  factory GiftCard.fromJson(Map<String, dynamic> json) {
    return GiftCard(
      id: json['id'], 
      value: json['value']);
  }
}
