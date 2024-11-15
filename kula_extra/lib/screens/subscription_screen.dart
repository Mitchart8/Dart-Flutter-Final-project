import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();

}

class _SubscriptionState extends State<Subscription> {
  final List<Map<String, dynamic>> subscriptionBands = [
    {'title': 'Institution', 'price': '\$49/month', 'color': Colors.tealAccent, 'isSubscribed': false},
    {'title': 'Household', 'price': '\$19/month', 'color': Colors.amberAccent, 'isSubscribed': false},
    {'title': 'Supermarket', 'price': '\$99/month', 'color': Colors.lightBlueAccent, 'isSubscribed': false},
    {'title': 'Farm', 'price': '\$59/month', 'color': Colors.greenAccent, 'isSubscribed': false},
    {'title': 'Restaurant', 'price': '\$79/month', 'color': Colors.pinkAccent, 'isSubscribed': false},
    {'title': 'Grocery Store', 'price': '\$89/month', 'color': Colors.orangeAccent, 'isSubscribed': false},
    {'title': 'Hotel', 'price': '\$109/month', 'color': Colors.purpleAccent, 'isSubscribed': false},
  ];

  void toggleSubscription(int index) {
    setState(() {
      subscriptionBands[index]['isSubscribed'] = !subscriptionBands[index]['isSubscribed'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription Plans'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: subscriptionBands.length,
          itemBuilder: (context, index) {
            final band = subscriptionBands[index];
            return SubscriptionCard(
              title: band['title'] as String,
              price: band['price'] as String,
              color: band['color'] as Color,
              isSubscribed: band['isSubscribed'] as bool,
              onToggle: () => toggleSubscription(index),
            );
          },
        ),
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String price;
  final Color color;
  final bool isSubscribed;
  final VoidCallback onToggle;

  const SubscriptionCard({
    super.key,
    required this.title,
    required this.price,
    required this.color,
    required this.isSubscribed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSubscribed ? Colors.red : Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: onToggle,
                child: Text(
                  isSubscribed ? 'Unsubscribe' : 'Subscribe',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
