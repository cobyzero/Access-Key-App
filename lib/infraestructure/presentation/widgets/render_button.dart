import 'package:access_key_app/config/util/colors.dart';
import 'package:flutter/material.dart';

class RenderButton extends StatelessWidget {
  const RenderButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          shape: const StadiumBorder(),
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.black),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
