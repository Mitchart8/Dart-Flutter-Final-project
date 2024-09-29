import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
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
      body: Center(
        child:Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Reach us on:'),
            ListTile(
              title: Text('Instagram'),
              subtitle: Text('@kulaextra'),
            ),
            ListTile(
              title: Text('WhatsApp'),
              subtitle: Text('+1234567890'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle partnership request
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Partnership'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'Company or Institution'),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Email Address'),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Phone Number'),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Location'),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Partnership Inquiry'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
