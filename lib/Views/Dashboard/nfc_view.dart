import 'package:flutter/material.dart';

class NfcCardView extends StatelessWidget {
  const NfcCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NFC Card')),
      body: const Center(child: Text('Manage Your NFC Card Here')),
    );
  }
}
