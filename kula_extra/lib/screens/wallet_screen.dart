import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  final String subscriptionType;

  const WalletScreen({super.key, required this.subscriptionType});

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  void _makePayment() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Thank you for subscribing! 🎉')),
    );
    Navigator.popUntil(context, ModalRoute.withName('/home'));
  }

  @override
  Widget build(BuildContext context) {
    final subscriptionType = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Subscription: $subscriptionType',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            _buildPaymentButton('Bank Transfer'),
            _buildPaymentButton('PayPal'),
            _buildPaymentButton('M-Pesa'),
            const Spacer(),
            ElevatedButton(
              onPressed: _makePayment,
              child: const Text('Send Payment'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentButton(String method) {
    return ListTile(
      title: Text(method),
      leading: const Icon(Icons.payment),
      onTap: () {
        // Handle payment method selection
      },
    );
  }
}
