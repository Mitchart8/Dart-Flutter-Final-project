import 'package:flutter/material.dart';

class ReceiverSubscriptionScreen extends StatefulWidget {
  const ReceiverSubscriptionScreen({super.key});

  @override
  _ReceiverSubscriptionScreenState createState() =>
      _ReceiverSubscriptionScreenState();
}

class _ReceiverSubscriptionScreenState extends State<ReceiverSubscriptionScreen> {
  void _selectSubscription(String type) {
    if (type == 'individual') {
      Navigator.pushNamed(context, '/wallet', arguments: 'Individual (\$10)');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Free of charge for needy organizations!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receiver Subscription'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _selectSubscription('individual'),
              child: const Text('Individual - \$10'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectSubscription('organization'),
              child: const Text('Needy Organization - Free'),
            ),
          ],
        ),
      ),
    );
  }
}
