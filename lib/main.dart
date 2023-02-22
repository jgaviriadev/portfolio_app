import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}
final GoRouter _route = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen()
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) =>  const DetailsScreen(),
    )
  ]
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioAppProvider(),)
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _route,
        theme: ThemeData(
          primaryColor: const Color(0xFFD0EDF2),
          backgroundColor: Colors.amber,
          scaffoldBackgroundColor: const Color(0xFFD0EDF2),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme
          )
        ),
      ),
    );
  }
}

