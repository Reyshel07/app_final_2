import 'package:app_final_2/presentation/screens/login_screen/login_screen.dart';
import 'package:app_final_2/presentation/screens/second_screen/second_screen.dart';
import 'package:app_final_2/presentation/screens/third_screen/third_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: LoginScreen.path,
  routes: [
    GoRoute(
      path: LoginScreen.path,
      name:  LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: SecondScreen.path,
      name: SecondScreen.name,
      builder: (context, state) => SecondScreen(),
    ),
    GoRoute(
      path: ThirdScreen.path,
      name: ThirdScreen.name,
      builder: (context, state) => ThirdScreen(),
    ),
  ]
);