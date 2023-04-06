import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:portfolio_app/providers/portfolio_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    context.read<PortfolioAppProvider>().getJsonData();
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              //color: Colors.amber,
              height: MediaQuery.of(context).size.height*0.9,
              width: double.infinity,
              child: FadeInUpBig(
                child: const RotatedBox(
                  quarterTurns: 3,
                  child: FittedBox(
                    alignment: Alignment.topRight,
                    child: Text(
                      'WELCOME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1
                    ),
                    )
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: FadeInRightBig(
                child: Image.asset(
                  'assets/splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}