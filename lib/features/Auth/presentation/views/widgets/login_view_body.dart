
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/gender_view.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/FaceOrGoogleButton.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';


class LoginViewBody extends StatefulWidget {
   LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
final _controller = ValueNotifier<bool>(false);

bool _checked = false;

void initState() {
  super.initState();

  _controller.addListener(() {
    
    setState(() {
      if (_controller.value) {
        _checked = true;
      } else {
        _checked = false;
      }
    });
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome",style: Styles.text28SemiBold,),
          Text("Please enter your data to continue",style: Styles.text15Regular,),
          SizedBox(height: 130,),
          CustomTextField(
            hinttext:  "Please Enter your username",
            labeltext:"Username" ,
          ),
        const  SizedBox(height: 20,),
         const CustomTextField(
            hinttext:  "Please Enter your password",
            labeltext:"Password" ,
          ),
          const SizedBox(height: 30,),
          Padding(
            padding:const EdgeInsets.only(right: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("Forget Password?",style: Styles.text15Regular.copyWith(color:const Color(0xFFEA4335),),),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Remember Me",style: Styles.text13Medium,),
                AdvancedSwitch(
                  width: 40,
                  height: 25,
                  controller: _controller,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Faceorgooglebutton(),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("By connecting your account confirm that you agree with our Term and Condition",style: Styles.text13Regular,textAlign: TextAlign.center,),
          ),
          SizedBox(height: 25,),
          GestureDetector(
            onTap: (){
              Get.to(() => const GenderView());
            },
            child: CustomButton(buttontitle: "Login",)),
   
        ],
      ),
    );
  }
}

