import 'dart:developer';

import 'package:ecommerce_app/core/utils/Functions/Custom_snak_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/Auth/Data/models/user_model.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/userCubit/cubit/user_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CustomBlocConsumerSign extends StatefulWidget {
  CustomBlocConsumerSign({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
   
  });
  // final String email, password;
  final GlobalKey<FormState> formKey;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  State<CustomBlocConsumerSign> createState() => _CustomBlocConsumerSignState();
}

class _CustomBlocConsumerSignState extends State<CustomBlocConsumerSign> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubitCubit, AuthCubitState>(
      listener: (context, state) {
        if (state is CreatAccountSuccess) {
          customSnakBar(context, 'Login Success');
          Get.to(() => const HomeView());
        }
        if (state is CreatAccountFauiler) {
          customSnakBar(context, state.messagEerror);
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is AuthLoading ? true : false,
          title: "Sign In",
          onTap: () {
            log(widget.emailController.text, name: "email");
            log(widget.passwordController.text, name: "password");
            if (widget.formKey.currentState!.validate()) {
              UserModel usermodel = UserModel(
                name: widget.userName,
                address: widget.address,
                email: widget.email,
              );
              BlocProvider.of<UserCubit>(context).addUser(userModel: usermodel);
              BlocProvider.of<AuthCubitCubit>(context).createNewAccount(
                  email: widget.emailController.text,
                  password: widget.passwordController.text);
            }
          },
        );
      },
    );
  }
}
