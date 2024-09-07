import 'package:ecommerce_app/features/Cart/Data/repo/cartrepoimp.dart';
import 'package:ecommerce_app/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(Cartrepoimp())..getCartProducts(),
      child: const Scaffold(
        // appBar: AppBar(),
        body: CartViewBody(),
      ),
    );
  }
}
