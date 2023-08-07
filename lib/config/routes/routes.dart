import 'package:access_key_app/domain/entitys/user_entity.dart';
import 'package:access_key_app/infraestructure/presentation/screens/administration_screen.dart';
import 'package:access_key_app/infraestructure/presentation/screens/home_screen.dart';
import 'package:access_key_app/infraestructure/presentation/screens/profile_screen.dart';
import 'package:access_key_app/infraestructure/presentation/screens/view_user_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter = GoRouter(
  initialLocation: "/main",
  routes: [
    GoRoute(
      path: "/main",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/viewUser",
      builder: (context, state) => ViewUserScreen(
        userEntity: state.extra as UserEntity,
      ),
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) => ProfileScreen(
        userEntity: state.extra as UserEntity,
      ),
    ),
    GoRoute(
      path: "/administration",
      builder: (context, state) => const AdministrationScreen(),
    )
  ],
);
