class GiftCardModel {
  final String code;
  final double value;

  GiftCardModel({required this.code, required this.value});

  factory GiftCardModel.fromJson(Map<String, dynamic> json) {
    return GiftCardModel(
      code: json['code'],
      value: json['value'].toDouble(),
    );
  }
}
