import 'package:flutter/material.dart';
import 'package:sekripsi/Login/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({Key key}) : super(key: key);

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
          const SizedBox(height: 50),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color:Colors.black54,
                ),
              ),
              Text( '',
                style: const TextStyle(
                  fontSize: 18,
                  color:Colors.black54,
                ),
              ),
            ],
          ),
          ),
          const SizedBox(height: 200,),
          GestureDetector(
            onTap: (){
              AuthController.instance.logOut();
            },
            child: Container(
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
                child : Text("Sign out", style:TextStyle (
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color:Colors.white
                ),
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
  }



