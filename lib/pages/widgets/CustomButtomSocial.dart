import 'package:flutter/material.dart';

import 'CustomText.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function press;

  CustomButtonSocial({
    required this.text,
    required this.imageName,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child: TextButton(
        onPressed:() => press,
       style: TextButton.styleFrom(
          shape:  RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(10.0),
        ),
       ),
        child: Row(
          children: [
            Image.asset(imageName),
            SizedBox(
              width: 100,
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}