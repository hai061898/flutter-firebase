import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLine,
    this.height = 1,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final int? maxLine;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(  
          color: color,
          height: height,
          fontSize: fontSize,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
