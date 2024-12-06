import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _personController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  void _submitDetails() {
    // Perform submission logic
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Delivery details successfully submitted!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delivery Details')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _timeController,
              decoration: const InputDecoration(
                labelText: 'Time of pick-up',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _personController,
              decoration: const InputDecoration(
                labelText: 'Who is picking?',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _contactController,
              decoration: const InputDecoration(
                labelText: 'Contact',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _submitDetails,
                  child: const Text('Submit'),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.pushNamed(context, '/community');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
