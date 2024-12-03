import 'package:flutter/material.dart';

class GiftCardView extends StatelessWidget {
  const GiftCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gift Cards')),
      body: const Center(child: Text('Browse and Redeem Gift Cards Here')),
    );
  }
}
