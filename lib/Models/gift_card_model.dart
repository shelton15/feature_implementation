class GiftCardModel {
  final int id;
  final String name;
  final double value;

  GiftCardModel({required this.id, required this.name, required this.value});

  factory GiftCardModel.fromJson(Map<String, dynamic> json) {
    return GiftCardModel(
      id: json['id'],
      name: json['name'],
      value: json['value'].toDouble(),
    );
  }
}
