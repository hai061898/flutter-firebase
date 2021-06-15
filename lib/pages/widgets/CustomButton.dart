import 'package:e_commerce_firebase/utils/constants.dart';
import 'package:flutter/material.dart';

import 'CustomText.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ Key? key, required this.press, this.text='Write text', this.color=kPrimaryColor }) : super(key: key);
  final String text;
  final Color color;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:()=> press,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10),
        backgroundColor: kPrimaryColor,

      ),
      child: CustomText( 
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
      
    );
  }
}