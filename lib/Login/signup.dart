import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekripsi/Login/auth_controller.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var emailController =TextEditingController();
    var passwordController = TextEditingController();

    double w = MediaQuery.of (context).size.width;
    double h = MediaQuery.of (context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        children: [
          Container(
            width: w,
            height: 230,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/watercolor.png'
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.18,),
                const CircleAvatar(
                  backgroundColor:Color (0xFFF48FB1),
                  radius:40 ,
                  backgroundImage: AssetImage(
                    "assets/girl.png"
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
          ),
          const SizedBox(height: 50),

          GestureDetector(
            onTap: (){
              AuthController.instance.register(
                  emailController.text.trim(),
                  passwordController.text.trim());
            },
          child : Container(
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
              child : Text("Sign up", style:TextStyle (
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),
              ),
            ),
          ),
          ),


          const SizedBox(height: 10,),
          RichText(text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: 'Have an account ?',
            style: TextStyle (
              fontSize: 15,
              color: Colors.grey[500],
            )
          ),),
          SizedBox(height:w*0.2),
          RichText(text:const TextSpan (
            text: "Sign up using the one of the following methods",
            style: TextStyle(color: Color(0xFF757575),
              fontSize: 14,
            ),
          ),),
        ],
      ),
    );
  }
}


// List images =[
//   "images/google.png"
//   "images/twitter.png"
//   "images/facebook.png"
//
// ];

//   Wrap (
//   children: List<Widget>.generate(
//       1,
//         (index){
//         return CircleAvatar(
//           radius: 10,
//           backgroundImage: AssetImage(
//           'images/'+images[index]
//           ),
//         );
//         },
//     ),
//
// )