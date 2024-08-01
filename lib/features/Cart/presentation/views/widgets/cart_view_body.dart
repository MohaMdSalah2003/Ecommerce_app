import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/address_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const Column(
            children: [
              DeliveryAddress(),
              PaymentMethod(),
              PriceInfo(),
              CustomButton(title: "Check Out")
            ],
          ),
        )
      ],
    );
  }
}

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Text(
            "Payment Method",
            style: Styles.text17Medium,
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(size: 15, Icons.arrow_forward_ios_rounded)),
        ),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            color: const Color(0xffF5F6FA),
            child: const Image(
              image: AssetImage("assets/images/Visa.png"),
            ),
          ),
          trailing: const Image(
            image: AssetImage("assets/images/Check.png"),
          ),
          title: const Text("Visa Classic"),
          subtitle: const Text("**** 7690"),
        ),
      ],
    );
  }
}

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Text(
            "Delivery Address",
            style: Styles.text17Medium,
          ),
          trailing: IconButton(
              onPressed: () {
                Get.to(() => const AddressView());
              },
              icon: const Icon(size: 15, Icons.arrow_forward_ios_rounded)),
        ),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/map_location.png"))),
          ),
          title: const Text("43, Electronics City Phase 1,Electronic City"),
          trailing: const Image(
            image: AssetImage("assets/images/Check.png"),
          ),
        ),
      ],
    );
  }
}

class PriceInfo extends StatelessWidget {
  const PriceInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Order Info",
            style: Styles.text17Medium,
          ),
          SizedBox(
            height: 10,
          ),
          CustomInfo(
            name: "Subtotal",
            value: r"$110",
          ),
          CustomInfo(
            name: "Delivery Charge",
            value: r"$10",
          ),
          CustomInfo(
            name: "Total",
            value: r"$120",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomInfo extends StatelessWidget {
  const CustomInfo({
    super.key,
    required this.name,
    required this.value,
  });
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Styles.text15Regular,
        ),
        Text(
          value.toString(),
          style: Styles.text15Medium,
        ),
      ],
    );
  }
}
