import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_textSwitch.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/widgets/custom_info_textfeild.dart';
import 'package:flutter/material.dart';

class AddressViewBody extends StatefulWidget {
  const AddressViewBody({super.key});

  @override
  State<AddressViewBody> createState() => _AddressViewBodyState();
}

class _AddressViewBodyState extends State<AddressViewBody> {
  final _controller = ValueNotifier<bool>(false);

  bool _checked = false;

  @override
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const CustomInfoTextfeild(title: "Name", hint: "Hemendra Mali"),
            const Row(
              children: [
                CustomInfoTextfeild(
                  title: "Country",
                  hint: "India",
                  width: 150,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomInfoTextfeild(
                  title: "City",
                  hint: "Bangalore",
                  width: 150,
                  height: 50,
                ),
              ],
            ),
            const CustomInfoTextfeild(
                title: "Phone Number", hint: "+91-800 301 0108"),
            const CustomInfoTextfeild(
                title: "Address",
                hint: "43, Electronics City Phase 1, Electronic City"),
            CustomTextSwitch(
                controller: _controller, text: "Save as primary address"),
            const SizedBox(
              height: 80,
            ),
            const CustomButton(title: "Save Address")
          ],
        ),
      ),
    );
  }
}
