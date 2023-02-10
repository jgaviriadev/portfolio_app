import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioAppProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const DetailsScreen(),
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

