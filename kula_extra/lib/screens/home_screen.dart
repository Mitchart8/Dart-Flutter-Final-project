import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {

// ignore: non_constant_identifier_names
bool dining=false, wallet=false, shopping_cart=false, delivery=false;
  
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
        margin: const EdgeInsets.only(top: 50.0, left: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
              "Welcome!",
              style: boldTextFieldStyle()
               ),
               Container(
                margin: const EdgeInsets.only(right: 20.0) ,
                padding:const EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.shopping_cart_outlined, color: Colors.white,),
               )
            ],
            ),
            const SizedBox(
              height: 30.0,
              ),
            Text(
              "Delicious food with no Expense!",
              style: headLineTextFieldStyle()
               ),
               Container(
                margin: const EdgeInsets.only(right: 20.0),
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        dining=true;
                        wallet=false;
                        shopping_cart=false;
                        delivery=false;
                        setState(() {
                          
                        });
                      },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: dining?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/dining.png", height: 50, width: 50, fit: BoxFit.cover, color: dining?Colors.black: Colors.orange),
                    ),
                  ),
                    ),
                  GestureDetector(
                      onTap: () {
                        dining=false;
                        wallet=true;
                        shopping_cart=false;
                        delivery=false;
                        setState(() {
                          
                        });
                      },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: wallet?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/wallet.png", height: 50, width: 50, fit: BoxFit.cover, color: wallet?Colors.black: Colors.orange),
                    ),
                  ),
                    ),
                  GestureDetector(
                      onTap: () {
                        dining=false;
                        wallet=false;
                        shopping_cart=true;
                        delivery=false;
                        setState(() {
                          
                        });
                      },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: shopping_cart?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/shopping_cart.png", height: 50, width: 50, fit: BoxFit.cover, color: shopping_cart?Colors.black: Colors.orange),
                    ),
                  ),
                    ),
                  GestureDetector(
                      onTap: () {
                        dining=false;
                        wallet=false;
                        shopping_cart=false;
                        delivery=true;
                        setState(() {
                          
                        });
                      },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: delivery?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/dining.png", height: 50, width: 50, fit: BoxFit.cover, color: delivery?Colors.black: Colors.orange),
                    ),
                  ),
                    ),
                 ]
                              ),
               ),

             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [ 
                   const SizedBox(width: 15.0,),         
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("assets/images/food 1.jpeg", height: 150, width: 150, fit: BoxFit.cover,),
                          Text("Veggie Taco", style: semiBoldTextFieldStyle()),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text("Healthy", style: lightTextFieldStyle()),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text("\$25", style: semiBoldTextFieldStyle(),)
                      
                      
                        ],),
                      ),
                    ),
                  ),
                 const SizedBox(width: 15.0,),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(children: [
                          Image.asset("assets/images/food 2.jpeg", height: 150, width: 150, fit: BoxFit.cover,),
                          Text("Whole bread with sweet stew", style: semiBoldTextFieldStyle()),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text("Sweet aroma", style: lightTextFieldStyle()),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text("\$25", style: semiBoldTextFieldStyle(),)
                      
                      
                        ],),
                      ),
                    ),
                  )
                 ],),
               ),
             
      
          ],
      ),
    )
    );
  }
}      


