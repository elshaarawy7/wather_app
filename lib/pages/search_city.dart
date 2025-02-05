import 'dart:math';

import 'package:flutter/material.dart';



class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Search for your city" , style: TextStyle(
          color: Colors.white , 
          fontSize: 20 ,
          fontWeight: FontWeight.bold
        ), ),
        centerTitle: true,
      ), 

      body: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child:  Center(
          child: TextField(
             
            decoration:const InputDecoration(
              hintText:" search for your city " ,
              border: OutlineInputBorder(),
            ),
            
          )
        )
      )
    );
  }
}
    