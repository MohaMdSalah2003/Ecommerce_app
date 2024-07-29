import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.icon,
    required this.hintText,
    this.labelText
  });
  final IconData? icon;
  final String hintText;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
       
    constraints:const BoxConstraints(maxWidth: 335,maxHeight:61 ),
    alignLabelWithHint: true,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior:FloatingLabelBehavior.always ,
      hintText:hintText,
      
      hintStyle: Styles.text13Regular,
      labelText: labelText,
      labelStyle: Styles.text15Medium,
      
      fillColor: const Color(0xFF9775FA).withOpacity(.3),
      filled: true,
      prefixIcon: Icon(icon),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Color(0xFF8F959E),
          ),
        ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFF8F959E),
          ),
        ),
      ),
    );
  }
}
