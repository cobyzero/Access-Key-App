import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RenderInput extends StatelessWidget {
  const RenderInput({
    super.key,
    required this.title,
    this.controller,
  });

  final String title;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: controller,
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getBorderStyle() {
    return const OutlineInputBorder();
  }
}
