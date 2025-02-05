import 'package:flutter/material.dart';
import 'package:wather_app2/widgets/MyBatoon.dart';
import 'package:wather_app2/widgets/text_field.dart';


class SingIn extends StatefulWidget {
  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFEAEAEA),
      body: Form(
        key: formKey,
        child: Center(
          
          child: Container(
            padding: const EdgeInsets.all(16),
            width: 350,
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              const  Icon(Icons.water_drop_sharp , size: 50,  color: Colors.blue,),
              const  SizedBox(height: 20),
              const   Text(
                  'Sign in to your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
               const  SizedBox(height: 20),
                
              const  MyButton(
                  label: "Sign in with Google", 
                  icon: Icons.g_mobiledata,
                  ),  
        
                const  SizedBox(height: 10,),
        
                const  MyButton(
                  label: "Sign in with Apple", 
                  icon: Icons.apple,
                  ),
                
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const SizedBox(height: 10),
                const Text_From_Fiel(
                  obscureText: false,
                   hintext: "Email addres",
                   ), 
                const   SizedBox(height: 10,),
                   const Text_From_Fiel(
                  obscureText: true,
                   hintext: "Password",
                   ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                     // Navigator.push(context, MaterialPageRoute(builder: (context){
                      //return SearchCity();
                   // }));
                    }
                    
                  },
                  child: const Text('Continue' , style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}