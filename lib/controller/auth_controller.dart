import 'package:e_commerce_firebase/pages/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
 GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
 FirebaseAuth _auth = FirebaseAuth.instance;
 @override
 void onInit(){
   super.onInit();
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

  // void saveUser()async{
  //    await FireStoreUser().addUserToFireStore(UserModel(
  //     userId: user.user.uid,
  //     email: user.user.email,
  //     name: name == null ? user.user.displayName : name,
  //     pic: '',
  //   ));
  // }
}