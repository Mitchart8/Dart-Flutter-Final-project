import 'package:flutter/material.dart';
import 'package:kula_extra/reusable_widgets/reusable_widget.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();

}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,)),
          Image.asset("assets/images/food 2.jpeg",
           width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
             fit: BoxFit.fill,),
             const SizedBox(height: 15.0),
             
              Row(
                children: [
                Column(
                  children: [
                    Text("Whole bread with sweet stew", style: semiBoldTextFieldStyle()),
                    Text("Whole bread with sweet stew", style: boldTextFieldStyle()),

                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.remove, color: Colors.white,),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Text(a.toString(), style: semiBoldTextFieldStyle(),),
                const SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: () {
                    if(a>1) {
                    --a;
                    }
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.remove, color: Colors.white,),
                  ),
                )
              ],),
              const SizedBox(height: 20.0,),
              Text("Paragraph of the food", style: lightTextFieldStyle(), maxLines: 3,),
              const SizedBox(height: 30.0,),
              Row(children: [
                Text("Delivery Time", style: headLineTextFieldStyle(),),
                const Icon(Icons.alarm, color: Colors.black,),
                Text("30 min", style: semiBoldTextFieldStyle(),)
              ],),
              //const SizedBox(height: 40.0,),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: semiBoldTextFieldStyle(),),
                        Text("\$30", style: boldTextFieldStyle(),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins'),),
                        const SizedBox(width: 30.0,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.shopping_cart_checkout_outlined, color: Colors.black,),
                        ),
                        const SizedBox(width: 10.0 ,)
                      ],
                    ),
                  )
                ],),
              )
      ]
      )
      ),
    );
  }
}