
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/FaceOrGoogleButton.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_auth_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';


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
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Sign Up",style: Styles.text28SemiBold,),
            
            const SizedBox(height: 152,),
            CustomTextField(
              hintText:  "Please Enter your username",
              labelText:"Username" ,
            ),
            const  SizedBox(height: 20,),
           const CustomTextField(
              hintText:  "Please Enter your password",
              labelText:"Password" ,
            ),
            const  SizedBox(height: 20,),
           const CustomTextField(
              hintText:  "Please Enter your Email",
              labelText:"Email Address" ,
            ),
            const SizedBox(height: 30,),
            Padding(
              padding:const EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("Forget Password?",style: Styles.text15Regular.copyWith(color:const Color(0xFFEA4335),),),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Remember Me",style: Styles.text13Medium,),
              
                  AdvancedSwitch(
                    activeColor: Color(0xff9775FA),
                    width: 40,
                    height: 25,
                    controller: _controller,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
      
            CustomButton(title: "Sign In",),
            SizedBox(height: 20,),
            Faceorgooglebutton(),
            SizedBox(height: 10,)
            ,GestureDetector(
              onTap: (){Get.to(()=>LoginView());},
              child: RichText(text: TextSpan(
                style: Styles.text15Medium,
                children: [
                  TextSpan(text:"Already have an account? "
                  ,style: Styles.text15Medium.copyWith(color: Colors.black)),
                TextSpan(text: "Log In",style: Styles.text15Medium.copyWith(color: Color(0xff7F00FF)),)]
              )),
            )
          ],
        ),
      ),
    );
  }
}


