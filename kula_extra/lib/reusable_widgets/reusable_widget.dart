import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 240,
      height: 240,
    );
  }


  TextField reuserbaleTextField(String text, IconData icon, bool isPasswordType,
   TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black12,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.amber,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)
        ),
      ),
      keyboardType: isPasswordType
      ? TextInputType.visiblePassword
      : TextInputType.emailAddress,
    );
   }

   Container signInSignUpButton(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.black26;
          }
          return Colors.deepOrangeAccent;
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      onPressed: () => onTap(), // Call the passed onTap function here
      child: Text(
        isLogin ? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );
}



   TextStyle boldTextFieldStyle() {
    return const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              );
  
   }

    TextStyle headLineTextFieldStyle() {
    return const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              );
  
   } 

   TextStyle lightTextFieldStyle() {
    return const TextStyle(
                color: Color.fromARGB(255, 119, 118, 118),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              );
  
   } 

   TextStyle semiBoldTextFieldStyle() {
    return const TextStyle(
                color: Color.fromARGB(255, 5, 5, 5),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              );
  
   } 

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFA726), // Light orange
            Color(0xFF40E0D0), // Turquoise
            Color(0xFFFF7043), // Darker orange
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
