import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';
import 'package:kula_extra/screens/home_screen.dart';
import 'package:kula_extra/screens/signin_screen.dart';
import 'package:kula_extra/screens/signup_screen.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,

  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KulaExtra2',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent, // Make the gradient visible
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const GradientBackground(child: SignInScreen()),
        '/SignUp': (context) => const GradientBackground(child: SignUpScreen()),
        '/Home': (context) => const GradientBackground(child: HomeScreen()),
      },
      
    );
  }
}

