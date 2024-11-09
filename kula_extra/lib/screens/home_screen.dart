import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text(
          "KulaExtra",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body:Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
              "Welcome!",
              style: boldTextFieldStyle()
               ),
            ],
            ),
          
          ],
        )
      ),
    );
  }
}      