import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.fastfood, size: 100, color: Colors.teal),
            ),
            const SizedBox(height: 20),
            const Text(
              'Food Name',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Text(
              'Description of the food goes here.',
              style: TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(
                labelText: 'Enter quantity in kg',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.number,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${_quantityController.text} kg added to cart')),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.deepOrange),
                  onPressed: () {
                    Navigator.pushNamed(context, '/delivery');
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
