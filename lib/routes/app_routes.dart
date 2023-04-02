import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

class MyRouter {
  MyRouter._();
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => const DetailsScreen(),
      )
    ],
  );
}