
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Faceorgooglebutton extends StatelessWidget {
  const Faceorgooglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(iconImage: "assets/images/Google.svg",),
                 const SizedBox(width: 20,),
                  CustomIconButton(iconImage: "assets/images/Facebook.svg")
                 
                // IconButton(onPressed: (){}, icon:Container(
                //   width: 40,
                //   height: 40,
                //   child: Image(
                //     fit: BoxFit.contain,
                //     image: AssetImage("assets/images/Facebook.png")),
                // )),
                // IconButton(onPressed:(){},icon:Container(child: Image(image: AssetImage("assets/images/Google.png"))) ,)
              ],);
       }
}




class CustomIconButton extends StatelessWidget {
   CustomIconButton({
    required
    this.iconImage,
    super.key, this.ontap,
  });
 final String iconImage;
 final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        width: 37,
        height: 37,
        child: SvgPicture.asset(iconImage),
      ),
    );
  }
}

// class Button extends StatelessWidget {
//   const Button({super.key, required this.title, required this.image,required this.color,this.ontap});
//   final String title;
//   final String image;
//   final Color color;
//   final void Function()? ontap;
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//       onTap: ontap,
//       child: Container(
//         width: 125,
//         height: 70
//         ,
//         decoration: BoxDecoration(
//          borderRadius:BorderRadius.circular(10) ,
//           color: color
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image(image: AssetImage(image)),
//             const SizedBox(width: 5,),
//             Text(title,style: Styles.text17SemiBold.copyWith(color: Colors.white),)
//           ],
//         ),
//       ),
//     );
//   }
// }
