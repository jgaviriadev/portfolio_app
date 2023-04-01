

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';
import 'widgets/menu_screen.dart';

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
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => const DetailsScreen(),
    )
  ],   
);

final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioAppProvider(),)
      ],
      child: MaterialApp.router(
        title: 'App',
        routerConfig: _route,
        theme: ThemeData(
          primaryColor: const Color(0xFFD0EDF2),
          backgroundColor: Colors.amber,
          scaffoldBackgroundColor: const Color(0xFFD0EDF2),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme
          ),
          iconTheme: const IconThemeData(color: Colors.black)
        ),
        builder: (context, router) {
          return ZoomDrawer(
            mainScreenScale: 0.2,
              borderRadius: 40,
              angle: -10,
              slideWidth: MediaQuery.of(context).size.width * 0.5,
              menuScreenWidth: double.infinity,
              drawerShadowsBackgroundColor: Colors.black,
              showShadow: true,
              menuBackgroundColor: const Color(0xFF00C0E4),
              controller: zoomDrawerController,
              menuScreen: MenuScreen(router: _route),
              mainScreen: router!,
          );
        },
      ),
    );
  }
}


