import 'package:ecommerce_app/core/utils/Functions/Custom_snak_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CustomBlocConsumerSign extends StatelessWidget {
  const CustomBlocConsumerSign({
    super.key,
    required this.email,
    required this.password,
    required this.formKey,
  });
  final String email, password;
  final GlobalKey<FormState> formKey;
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
            if (formKey.currentState!.validate()) {
              BlocProvider.of<AuthCubitCubit>(context)
                  .createNewAccount(email: email, password: password);
            }
          },
        );
      },
    );
  }
}
