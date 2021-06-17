import 'package:e_commerce_firebase/models/auth_model.dart';
import 'package:e_commerce_firebase/pages/home/home_screen.dart';
import 'package:e_commerce_firebase/pages/login/login_screen.dart';
import 'package:e_commerce_firebase/service/firestore_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
 GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
 FirebaseAuth _auth = FirebaseAuth.instance;

 String? email,password, name;
 Rx<User> _user = Rx<User>();
 String get user => _user.value.email!;

 @override
 void onInit(){
   super.onInit();
   _user.bindStream(_auth.authStateChanges());
 }
   @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  void googleSignup()async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication = await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    await _auth.signInWithCredential(credential).then((user) {
      // saveUser(user);
      Get.offAll(LoginScreen());
    });
  }

  void facebookLogion()async{
    final AccessToken result = (await FacebookAuth.instance.login()) as AccessToken;
    final OAuthCredential facebookAuthCredential= FacebookAuthProvider.credential(result.token);
     await _auth.signInWithCredential(facebookAuthCredential).then((user) {
      // saveUser(user);
    });

  } 
  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email!, password: password!);
      Get.offAll(HomeScreen());
    } catch (e) {
      print(e);
      // Get.snackbar(
      //   'Error login account',
      //   e.message,
      //   colorText: Colors.black,
      //   snackPosition: SnackPosition.BOTTOM,
      // );
    }
  }

 void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((user) async {
        saveUser(user);
      });

      Get.offAll(HomeScreen());
    } catch (e) {
      print(e);
      // Get.snackbar(
      //   'Error login account',
      //   e.message,
      //   colorText: Colors.black,
      //   snackPosition: SnackPosition.BOTTOM,
      // );
    }
  }



  void saveUser(UserCredential user)async{
     await FireStoreUser().addUsertoFireStore(UserModel(
      userId: user.user!.uid,
      email: user.user!.email,
      name: name == null ? user.user!.displayName : name,
      pic: '',
    ));
  }
}