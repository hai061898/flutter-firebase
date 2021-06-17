import 'package:e_commerce_firebase/controller/auth_controller.dart';
import 'package:e_commerce_firebase/pages/login/login_screen.dart';
import 'package:e_commerce_firebase/pages/widgets/CustomText.dart';
import 'package:e_commerce_firebase/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetWidget<AuthController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
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
              CustomText(
                text: "Sign Up,",
                fontSize: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade900,
                      ),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        controller.name = value;
                      },
                      validator: (value) {
                        if (value == null) {
                          print('error');
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'What your name?',
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
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade900,
                      ),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        controller.password = value;
                      },
                      validator: (value) {
                        if (value == null) {
                          print('error');
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'email',
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
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'password',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade900,
                      ),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        controller.password = value;
                      },
                      validator: (value) {
                        if (value == null) {
                          print('error');
                        }
                      },
                      decoration: InputDecoration(
                        hintText: '******** ?',
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
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey.shade50,
                ),
                child: TextButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
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
            ],
          ),
        ),
      ),
    );
  }
}
