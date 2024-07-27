import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttontitle,
    super.key,
  });
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      child: Container(
        color:const Color(0xFF9775FA) ,
        width: double.infinity,
        height: 75,
        child: Center(
          child: Text(buttontitle,style:Styles.text17Medium.copyWith(color: Colors.white),
                    ),
        )),
    );
  }
}
