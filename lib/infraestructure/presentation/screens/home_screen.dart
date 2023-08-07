import 'package:access_key_app/config/util/colors.dart';
import 'package:access_key_app/domain/entitys/user_entity.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () => context.go("/administration"),
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
                size: 50.w,
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 10.h,
              ),
              RenderButton(
                onPressed: () {
                  context.go(
                    "/viewUser",
                    extra: UserEntity(
                      name: "Sebastian",
                      lastName: "Abal Salazar",
                      identification: "93283823",
                      phone: "+32323233",
                      lastEntry: DateTime.now(),
                      status: 0,
                    ),
                  );
                },
                text: "Analizar QR",
              )
            ],
          ),
        ),
      ),
    );
  }
}
