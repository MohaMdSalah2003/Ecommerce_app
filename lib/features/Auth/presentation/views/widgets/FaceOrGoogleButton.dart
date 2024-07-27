import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Faceorgooglebutton extends StatelessWidget {
  const Faceorgooglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Button(color: Color(0xFF4267B2),title: 'facebook', image: 'assets/images/Facebook.png'),
      SizedBox(width: 10,),
      Button(color:Color(0xFFEA4335), title: 'google', image: "assets/images/Google.png")],);  }
}




class Button extends StatelessWidget {
  const Button({super.key, required this.title, required this.image,required this.color,this.ontap});
  final String title;
  final String image;
  final Color color;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        width: 125,
        height: 70
        ,
        decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(10) ,
          color: color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(width: 5,),
            Text(title,style: Styles.text17SemiBold.copyWith(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
