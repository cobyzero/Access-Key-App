import 'package:access_key_app/config/util/colors.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return RenderWindows(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () => context.go("/home"),
        child: const Icon(
          Icons.person,
          color: Colors.black,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.lock,
                size: size.width * .5,
                color: kPrimaryColor,
              ),
              SizedBox(
                height: size.height * .1,
              ),
              RenderButton(
                onPressed: () {},
                text: "Analizar QR",
              )
            ],
          ),
        ),
      ),
    );
  }
}
