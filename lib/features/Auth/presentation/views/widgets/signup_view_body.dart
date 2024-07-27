
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/FaceOrGoogleButton.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';


class SignupViewBody extends StatefulWidget {
   SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
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
          const Text("Sign Up",style: Styles.text28SemiBold,),
          
          const SizedBox(height: 152,),
          CustomTextField(
            hinttext:  "Please Enter your username",
            labeltext:"Username" ,
          ),
          const  SizedBox(height: 20,),
         const CustomTextField(
            hinttext:  "Please Enter your password",
            labeltext:"Password" ,
          ),
          const  SizedBox(height: 20,),
         const CustomTextField(
            hinttext:  "Please Enter your Email",
            labeltext:"Email Address" ,
          ),
          const SizedBox(height: 30,),
          Padding(
            padding:const EdgeInsets.only(right: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("Forget Password?",style: Styles.text15Regular.copyWith(color:const Color(0xFFEA4335),),),
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Remember Me",style: Styles.text13Medium,),
            
                AdvancedSwitch(
                  width: 40,
                  height: 25,
                  controller: _controller,
                ),
              ],
            ),
          ),
          Faceorgooglebutton(),
         const Spacer(flex: 1,),
       
         const SizedBox(height: 25,),
          CustomButton(buttontitle: "Login",),
        

      
        ],
      ),
    );
  }
}


