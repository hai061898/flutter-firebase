import 'package:flutter/material.dart';

import 'CustomText.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text;
  final String? hint;
  final Function? onSave;
  // final Function? validator;

  CustomTextFormField({
    this.text,
    this.hint,
    required this.onSave,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text!,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved:(onSave){},
            // validator:(validator){},
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}