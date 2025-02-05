import 'package:flutter/material.dart';

class Text_From_Fiel extends StatelessWidget {
  const Text_From_Fiel({
    super.key,
    required this.obscureText,
    required this.hintext,
  });

  final bool obscureText;
  final String hintext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your $hintext";
        }
        if (hintext.toLowerCase().contains("email") &&
      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
     return 'Enter a valid email';
  }

       else if(obscureText&&value.length<6){
         return "Password must be at least 6 characters";
       } 

        return null; // لازم ترجع null لو مفيش خطأ
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintext,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}