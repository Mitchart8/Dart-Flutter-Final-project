import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KulaExtra-Register'),
        backgroundColor: Color(0xFF8B8589), // Taupe color
        // Wrap the IconButton in a Builder to provide the right context
        leading: Builder(
          builder: (context) => IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Opens the side bar
          },
        ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF40E0D0), // Turquoise color for header
              ),
              child: Text('Navigation', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Register'),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              title: Text('Postings'),
              onTap: () {
                Navigator.pushNamed(context, '/postings');
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              title: Text('Delivery or Pick-Up'),
              onTap: () {
                Navigator.pushNamed(context, '/delivery');
              },
            ),
            ListTile(
              title: Text('Community Engagement'),
              onTap: () {
                Navigator.pushNamed(context, '/community');
              },
            ),
            ListTile(
              title: Text('Contuct Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),// Add more pages here...
          ],
        ),
      ),
      backgroundColor: Color(0xFFB2E0E0), // Light Turquoise background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name/Institution Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF40E0D0), // Turquoise for the button
                ),
                onPressed: () {
                  // Handle registration logic
                },
                child: Text('Register'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8B8589), // Taupe for the button
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}