
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sekripsi/Login/auth_controller.dart';
import 'package:sekripsi/Login/signup.dart';
import 'package:get/get.dart';
import 'package:flutter/src/gestures/tap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  var emailController =TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of (context).size.width;
    double h = MediaQuery.of (context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        children: [
          Container(
            width: w,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/watercolor.png'
                    ),
                  fit: BoxFit.cover
                )
            ),
        ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hello", style:TextStyle (
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
                const Text("Sign into your account",
                  style:TextStyle (
                    fontSize: 16,
                    color: Color(0xFFBDBDBD)
                ),
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ]
                    ),
                child: TextField (
                  controller: emailController,
                decoration: InputDecoration (
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email,color:Color(0xFF0097A7), ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.0
                    )
                  ),
                    enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                        )
                    ),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  )
                  ),
                )
                ),
                const SizedBox(height: 20),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: TextField (
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration (
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.password_outlined,color:Color(0xFF0097A7), ),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                          )
                      ),
                    )
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    const Text("Sign into your account",
                      style:TextStyle (
                          fontSize: 16,
                          color: Color(0xFFBDBDBD)
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          const SizedBox(height: 50),
         GestureDetector(
           onTap: (){
             AuthController.instance.login(
                 emailController.text.trim(),
                 passwordController.text.trim()
             );
           },
           child:  Container(
             width: w*0.4,
             height: h*0.06,
             decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(27),
                 image: const DecorationImage(
                     image: AssetImage(
                         'assets/watercolor.png'
                     ),
                     fit: BoxFit.cover
                 )
             ),
             child :const Center(
               child : Text("Sign in", style:TextStyle (
                   fontSize: 29,
                   fontWeight: FontWeight.bold,
                   color:Colors.white
               ),
               ),
             ),

           ),
         ),
          SizedBox(height:w*0.2),
          RichText(text: TextSpan (
            text: "Don\'t have an accont?",
            style: const TextStyle(color: Color(0xFF757575),
              fontSize: 15,
            ),
            children: [
              TextSpan (
              text: " Create",
              style: const TextStyle(color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUp())
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
