import 'package:e_commerce_firebase/helper/binding.dart';
import 'package:e_commerce_firebase/pages/login/login_screen.dart';
// import 'package:e_commerce_firebase/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter + FireBase',
       theme: ThemeData(
        fontFamily: 'SourceSans',
      ),
      // initialRoute: '/',
      // getPages: routes(),
      initialBinding: Binding(),
      home:LoginScreen(),
      
      // home: Login(),
    );
  }
}