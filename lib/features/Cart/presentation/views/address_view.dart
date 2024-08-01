import 'package:ecommerce_app/features/Cart/presentation/views/widgets/address_view_body.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), body: const SafeArea(child: AddressViewBody()));
  }
}
