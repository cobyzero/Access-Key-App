import 'package:access_key_app/config/util/colors.dart';
import 'package:access_key_app/domain/entitys/user_entity.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_listTitle.dart';
import 'package:access_key_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class ViewUserScreen extends StatelessWidget {
  const ViewUserScreen({
    super.key,
    required this.userEntity,
  });

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  context.go("/main");
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: kPrimaryColor,
                iconSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Icon(
              Icons.lock_person,
              size: 30.w,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            const RenderListTile(
              title: "Estado",
              text: "Activo",
              textColor: Colors.green,
            ),
            SizedBox(
              height: 3.h,
            ),
            RenderListTile(
              title: "Nombre",
              text: "${userEntity.name} ${userEntity.lastName}",
            ),
            SizedBox(
              height: 3.h,
            ),
            const RenderListTile(
              title: "Identificación",
              text: "838383883",
            ),
            SizedBox(
              height: 3.h,
            ),
            const RenderListTile(
              title: "Teléfono",
              text: "+32 938237237",
            ),
            SizedBox(
              height: 3.h,
            ),
            const RenderListTile(
              title: "Ultimo Ingreso",
              text: "12 de Marzo de 2023",
            ),
            SizedBox(
              height: 3.h,
            ),
            RenderButton(
              text: "Confirmar Ingreso",
              onPressed: () {},
            ),
            SizedBox(
              height: 3.h,
            ),
            RenderButton(
              text: "Revisar Perfil",
              onPressed: () {
                context.go("/profile", extra: userEntity);
              },
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
