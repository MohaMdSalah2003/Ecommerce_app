import 'package:ecommerce_app/core/utils/Functions/Custom_snak_bar.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Faceorgooglebutton extends StatelessWidget {
  const Faceorgooglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubitCubit, AuthCubitState>(
      listener: (context, state) {
        if (state is SignInGoogleSuccess) {
          customSnakBar(context, 'Login Success');
          Get.to(() => const HomeView());
        }
        if (state is SignInGoogleFauiler) {
          customSnakBar(context, state.messagEerror);
        }
        if (state is SignInFacebookSuccess) {
          customSnakBar(context, 'Login Success');
          Get.to(() => const HomeView());
        }
        if (state is SignInFacebookFauiler) {
          customSnakBar(context, state.messagEerror);
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              iconImage: "assets/images/Google.svg",
              ontap: () {
                BlocProvider.of<AuthCubitCubit>(context).signInWithGoogle();
              },
            ),
            const SizedBox(
              width: 20,
            ),
            const CustomIconButton(iconImage: "assets/images/Facebook.svg")

            // IconButton(onPressed: (){}, icon:Container(
            //   width: 40,
            //   height: 40,
            //   child: Image(
            //     fit: BoxFit.contain,
            //     image: AssetImage("assets/images/Facebook.png")),
            // )),
            // IconButton(onPressed:(){},icon:Container(child: Image(image: AssetImage("assets/images/Google.png"))) ,)
          ],
        );
      },
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.iconImage,
    super.key,
    this.ontap,
  });
  final String iconImage;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
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
