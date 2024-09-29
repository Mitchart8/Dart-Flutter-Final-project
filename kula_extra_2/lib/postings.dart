import 'package:flutter/material.dart';

class PostingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Surplus Food'),
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
      backgroundColor: Color(0xFFB2E0E0),
      body: Center(
        child: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Type of Food'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Expiration Date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the posting and navigate back
              },
              child: Text('Post'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
