import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key}): super(
    leading: const Icon(
      Icons.density_medium_rounded,
      color: Colors.black,
    ),
    elevation: 0, 
    backgroundColor: const Color(0xFFD0EDF2),
  );
}