import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepOrange,
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: const Icon(Icons.menu, color: Colors.white),
              items: const [
                DropdownMenuItem(value: 'home', child: Text('Home', style: TextStyle(color: Colors.black))),
                DropdownMenuItem(value: 'logout', child: Text('Logout', style: TextStyle(color: Colors.black))),
              ],
              onChanged: (value) {
                if (value == 'logout') {
                  Navigator.pushNamed(context, '/logout');
                }
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details');
                
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.fastfood, size: 50, color: Colors.teal),
                    ),
                    const Text('Food Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    const Text('Quantity: 10kg', style: TextStyle(color: Colors.black87)),
                    const Text('Expires: 2 days', style: TextStyle(color: Colors.black54)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/donor');
            },
            backgroundColor: Colors.deepOrange,
            child: const Text('Donor', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/receiver');
            },
            backgroundColor: Colors.teal,
            child: const Text('Receiver', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
