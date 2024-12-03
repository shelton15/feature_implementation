import '../Providers/gift_card_provider.dart';

class GiftCardController {
  final GiftCardProvider giftCardProvider;

  GiftCardController({required this.giftCardProvider});

  Future<void> fetchGiftCards() async {
    await giftCardProvider.fetchGiftCards();
  }

  Future<void> redeemGiftCard(String code) async {
    await giftCardProvider.redeemGiftCard(code);
  }
}
