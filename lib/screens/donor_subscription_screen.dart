import 'package:flutter/material.dart';
import 'package:kula_extra/screens/wallet_screen.dart';

class DonorSubscriptionScreen extends StatefulWidget {
  const DonorSubscriptionScreen({super.key});

  @override
  _DonorSubscriptionScreenState createState() => _DonorSubscriptionScreenState();
}

class _DonorSubscriptionScreenState extends State<DonorSubscriptionScreen> {
  void _navigateToWallet(String subscriptionType) {
    Navigator.pushNamed(context,
    MaterialPageRoute(builder: (context) => WalletScreen(subscriptionType: 'subscriptionType',)) as String);
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Donor Subscription'),
      backgroundColor: Colors.amber[800],
    ),
    body: Stack(
      children: [
        // Background decoration: Half white, half orange
        Column(
          children: [
            // Top half - White background
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                color: Colors.white,),
                height: MediaQuery.of(context).size.height / 1.5, // Half screen
                width: double.infinity,
              ),
            ),
            // Bottom half - Orange background
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.orange,),
                height: MediaQuery.of(context).size.height / 2.0, // Half screen
                width: double.infinity,
              ),
            ),
          ],
        ),
        // Foreground content
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildSubscriptionOption('Household', '\$5/month'),
              _buildSubscriptionOption('Supermarket', '\$15/month'),
              _buildSubscriptionOption('Restaurant & Cafes', '\$25/month'),
              _buildSubscriptionOption('Farms', '\$10/month'),
              _buildSubscriptionOption('Schools', '\$8/month'),
            ],
          ),
        ),
      ],
    ),
  );
}


  Widget _buildSubscriptionOption(String title, String price) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(title),
        subtitle: Text(price),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () => _navigateToWallet(title),
      ),
    );
  }
}
