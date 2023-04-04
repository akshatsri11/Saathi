import 'package:flutter/material.dart';
import 'package:saathi/components/myButton.dart';
import 'package:saathi/components/myText.dart';




  class LoginPage extends StatelessWidget{
   LoginPage({super.key});

    final usernameController= TextEditingController();
    final passwordController = TextEditingController();
    void loginUser(){
      
    }


    @override
    Widget build(BuildContext context){
      return Scaffold(
backgroundColor: Colors.white ,
        body: SafeArea(
          child:Center(
             child: Column(children: [
                const SizedBox(height: 25,),

               Text(
                    'SAATHI',
                    style: TextStyle(color: Colors.blue[900],
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    )
                ),
               Image.asset('lib/images/truck (2).jpg',),
               const SizedBox(height: 35),
               MyTextField(
                 controller: usernameController ,
                 hintText: 'Username',
                 obscureText: false,
               ),
             const SizedBox(height: 25),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 12.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text('Forgot Password?'),
                ]

              )

            ),
               const SizedBox(height: 25),
                myButton(
                    onTap: loginUser,
                ),
               Padding(padding: EdgeInsets.symmetric(vertical: 15),
               child:
                 Text('or continue with',),
               ),


               Image.asset('lib/images/google.jpg',
               height: 90,)
          ])
            )




        )
      );
 }
  }
