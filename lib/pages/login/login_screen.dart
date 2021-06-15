import 'package:e_commerce_firebase/pages/widgets/CustomText.dart';

import 'package:e_commerce_firebase/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome",
                    fontSize: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    // onTap: Get.to(RegisterScreen()),
                    child: CustomText(
                      text: "Sign Up",
                      color: kPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade900,
                      ),
                    ),
                    TextFormField(
                      //  onSaved:(){},
                      //  validator: (){},
                      decoration: InputDecoration(
                        hintText: 'your@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade900,
                      ),
                    ),
                    TextFormField(
                      //  onSaved:(){},
                      //  validator: (){},
                      decoration: InputDecoration(
                        hintText: '*********',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Forgot Password?',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey.shade50,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: CustomText(
                    alignment: Alignment.center,
                    text: 'SIGN IN',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey.shade50,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/facebook.png"),
                      SizedBox(
                        width: 100,
                      ),
                      CustomText(
                        text: 'Sign In with Facebook',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey.shade50,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/google.png"),
                      SizedBox(
                        width: 100,
                      ),
                      CustomText(
                        text: 'Sign In with Google',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
