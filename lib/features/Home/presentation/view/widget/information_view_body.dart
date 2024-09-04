import 'dart:io';

import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InformationViewBody extends StatefulWidget {
  const InformationViewBody({super.key});

  @override
  State<InformationViewBody> createState() => _InformationViewBodyState();
}

class _InformationViewBodyState extends State<InformationViewBody> {
  XFile? image;

  ImagePicker imagePicker = ImagePicker();

  pickImage() async {
    var file = await imagePicker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(() {
        image = XFile(file.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(child: Text("Profile Inormation")),
        const SizedBox(
          height: 15,
        ),
        Stack(clipBehavior: Clip.none, children: [
          CircleAvatar(
            radius: 60,
            child: image == null
                ? Image.file(File(image!.path))
                : const Image(
                    image: AssetImage("assets/images/user.png"),
                  ),
          ),
          Positioned(
            right: -10,
            bottom: 0,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 223, 215, 215),
              radius: 25,
              child: IconButton(
                onPressed: () {
                  pickImage();
                },
                icon: const Icon(Icons.camera_alt_outlined),
              ),
            ),
          )
        ]),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: CustomTextField(hintText: "username"),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: CustomTextField(hintText: "Phone Number"),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: CustomTextField(hintText: "age"),
        ),
        const CustomButton(title: "Update ")
      ],
    );
  }
}
