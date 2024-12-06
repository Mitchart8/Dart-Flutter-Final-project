import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';
import 'package:kula_extra/screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState(); 
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
   final TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            20,MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/kulaExtra2.png"),
                const SizedBox(
                  height: 30,
                ),
                reuserbaleTextField("Enter Name/Institution", Icons.person_outline, false,
                _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reuserbaleTextField("Enter Email", Icons.email_outlined, false,
                _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reuserbaleTextField("Enter password", Icons.lock_outlined, true,
                _passwordTextController),
                const SizedBox(
                  height: 10,
                ),
                signInSignUpButton(context, false, () async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailTextController.text,
      password: _passwordTextController.text,
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
    );
  } catch (e) {
    print("Error: $e"); // Log the error to debug if something goes wrong
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error signing up: $e")),
    );
  }
})

              ],
            ),
            ),
      ),
    );
  }
  }
  
  
  
  
  
  
  
  
  
  
  
  
   
  
