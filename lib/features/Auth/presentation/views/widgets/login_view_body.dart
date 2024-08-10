import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_textSwitch.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/forget_password_view.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/signup_view.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/FaceOrGoogleButton.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_blocconsumer_login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _controller = ValueNotifier<bool>(false);

  bool _checked = false;

  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
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

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Stylesh",
                style: Styles.text60RegularSacramento
                    .copyWith(color: const Color(0xff9775FA)),
              ),

              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                hintText: "Please Enter your Email",
                labelText: "Email",
                controller: emailController,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                hintText: "Please Enter your Password",
                labelText: "Password",
                controller: passwordController,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ForgotPasswordView());
                      },
                      child: Text(
                        "Forget Password?",
                        style: Styles.text15Regular.copyWith(
                          color: const Color(0xFFEA4335),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: CustomTextSwitch(
                    text: "Remember Me", controller: _controller),
              ),
              const SizedBox(
                height: 20,
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   child: Text("By connecting your account confirm that you agree with our Term and Condition",style: Styles.text13Regular,textAlign: TextAlign.center,),
              // ),
              const SizedBox(
                height: 25,
              ),
              CustomBlocConsumerLogin(
                email: emailController!.text,
                password: passwordController!.text,
                formKey: formKey,
              ),
              const SizedBox(
                height: 30,
              ),
              const Faceorgooglebutton(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => const SignUpView());
                  },
                  child: Text(
                    "Create a new Account",
                    style: Styles.text15Medium
                        .copyWith(color: const Color(0xff7F00FF)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
