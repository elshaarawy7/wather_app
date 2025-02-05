import 'package:flutter/material.dart';

class cardWatherServices extends StatelessWidget {
   final String CityName ;
   final IconData icon ;
   final String temperature ;

  cardWatherServices({required this.CityName, required this.icon, required this.temperature});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(CityName , style: const TextStyle(
          color: Colors.white ,
          fontSize:28 ,
          fontWeight: FontWeight.bold , 
        ),),

      const  SizedBox(height: 5,) ,

      Icon(icon  , size:100 , color: Colors.orange, ) ,

      Text(temperature , style: const TextStyle(
        color: Colors.white ,
        fontSize: 48 ,
        fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}