import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KulaExtra Dashboard'),
        backgroundColor: Color(0xFF8B8589),
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
                color: Color(0xFF40E0D0), // Turquoise for header
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
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),// Add more pages here...
          ],
        ),
      ),
      backgroundColor: Color(0xFFB2E0E0), //Light turquoise background
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Group 1 Subscription'),
            subtitle: Text('Fee: \$10/month'),
            onTap: () {
              // Handle group subscription
            },
          ),
          ListTile(
            title: Text('Group 2 Subscription'),
            subtitle: Text('Fee: \$20/month'),
            onTap: () {
              // Handle group subscription
            },
          ),
          // Add more groups as needed
        ],
      ),
    );
  }
}
