import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekripsi/Login/login.dart';
import 'package:sekripsi/Login/welcome.dart';
import 'package:sekripsi/MenuBaar/Home.dart';
import 'package:sekripsi/navbar.dart';

class AuthController extends GetxController{
  // AuthController.intsance
  static AuthController instance =Get.find();
  //Email, Password, name
   Rx<User> _user;
  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  void onReady(){
    super.onReady();
    _user = Rx<User>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }


  _initialScreen(User user) {
    if (user == null) {
      print("Login Page");
      Get.offAll(() => LoginPage());
    }
    else {
      Get.offAll(() => NavbarPage());
    }

  }


  Future<void> register (String email, password) async {
    try{
    await  auth.createUserWithEmailAndPassword(email: email, password: password);
    // ignore: empty_catches
    }catch (e){
        Get.snackbar('About User', 'User Message',
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
          titleText: const Text('Accont creation faild',
          style: TextStyle(
              color: Colors.white
          ),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(
                color: Colors.white
            ),
          )
        );
    }
  }
  Future<void> login (String email, password) async {
    try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
      // ignore: empty_catches
    }catch (e){
      Get.snackbar('About Login', 'Login Message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text('Login failed',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(
                color: Colors.white
            ),
          )
      );
    }
  }
  Future<void> logOut () async {
   await  auth.signOut();
  }
}
