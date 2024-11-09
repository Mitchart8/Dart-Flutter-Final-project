import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';
import 'package:kula_extra/screens/home_screen.dart';
import 'package:kula_extra/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState(); 
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                signInSignUpButton(context, true, () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
                })
                .onError(
                  (error, stackTrace) {
                 print("Error ${error.toString()}"); 
                 }),
                signUpOption()
              ],
            ),
            ),
      ),
    );
  } 

 Row signUpOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
      style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignUpScreen()));
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ]
    );
  }
}

extension on Container {
  onError(Null Function(dynamic error, dynamic stackTrace) param0) {}
}