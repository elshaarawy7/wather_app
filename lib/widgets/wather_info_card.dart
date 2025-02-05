import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {
 
  final IconData icon;
  final String label;
  final String value;


  const WeatherInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  }); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon , size:30 , color: Colors.blue, ) ,

      const  SizedBox(height: 5,) ,

      Text(label , style:const TextStyle(
        color: Colors.white ,
        fontSize: 20 ,
        fontWeight: FontWeight.bold ,
      ),),

      Text(value , style: const TextStyle(color: Colors.white),)
      ],
    );
  }
  
}