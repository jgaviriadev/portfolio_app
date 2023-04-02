import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:portfolio_app/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'themes/light_theme.dart';
import 'widgets/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

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
        debugShowCheckedModeBanner: false,
        title: 'App',
        routerConfig: MyRouter.router,
        theme: LightTheme.themeData(context),
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
              menuScreen: MenuScreen(router: MyRouter.router),
              mainScreen: router!,
          );
        },
      ),
    );
  }
}


