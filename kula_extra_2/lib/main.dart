import 'package:flutter/material.dart';
import 'register.dart';
import 'login.dart';
import 'postings.dart';
import 'dashboard.dart';
import 'delivery.dart';
import 'community.dart';
import 'contact.dart';

void main() => runApp(KulaExtraApp());

class KulaExtraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KulaExtra',
      theme: ThemeData(
        primaryColor: Color(0xFF40E0D0), // Turquoise
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF8B8589)), // Taupe
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RegisterPage(), // Landing page
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/postings': (context) => PostingsPage(),
        '/delivery': (context) => DeliveryPage(),
        '/community': (context) => CommunityPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}


