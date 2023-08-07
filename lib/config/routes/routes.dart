import 'package:access_key_app/infraestructure/presentation/screens/home_screen.dart';
import 'package:access_key_app/infraestructure/presentation/screens/main_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter = GoRouter(
  initialLocation: "/main",
  routes: [
    GoRoute(
      path: "/main",
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
