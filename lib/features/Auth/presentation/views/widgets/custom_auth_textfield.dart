import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    required this.hinttext,
    required this.labeltext,
    super.key,
  });
  final String hinttext;
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return TextField(

    decoration:InputDecoration(
    constraints:const BoxConstraints(maxWidth: 335,maxHeight:61 ),
    alignLabelWithHint: true,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior:FloatingLabelBehavior.always ,
      hintText:hinttext,
      hintStyle: Styles.text13Regular,
      labelText: labeltext,
      labelStyle: Styles.text15Medium
    ),);
  }
}