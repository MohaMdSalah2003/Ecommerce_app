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
  const CustomBlocConsumerSign({
    super.key,
    required this.email,
    required this.password,
    required this.formKey,
    required this.userName,
    required this.address,
  });
  final String email, password, userName, address;
  final GlobalKey<FormState> formKey;

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
            if (widget.formKey.currentState!.validate()) {
              UserModel usermodel = UserModel(
                name: widget.userName,
                address: widget.address,
                email: widget.email,
              );
              BlocProvider.of<UserCubit>(context).addUser(userModel: usermodel);
              BlocProvider.of<AuthCubitCubit>(context).createNewAccount(
                  email: widget.email, password: widget.password);
            }
          },
        );
      },
    );
  }
}
