import 'package:flutter/material.dart';
import '../../Controllers/wallet_controller.dart';
import '../../Models/wallet_model.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final _walletController = WalletController();
  Wallet? _wallet;

  @override
  void initState() {
    super.initState();
    _fetchWallet();
  }

  void _fetchWallet() async {
    final wallet = await _walletController.getWalletBalance();
    setState(() {
      _wallet = wallet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: _wallet == null
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Text("Wallet Balance: \$${_wallet!.balance}"),
                // Other components here
              ],
            ),
    );
  }
}
