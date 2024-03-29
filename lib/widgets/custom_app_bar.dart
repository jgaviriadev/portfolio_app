import 'package:flutter/material.dart';

import '../main.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.density_medium_rounded),
      color: Colors.black,
      onPressed: () {
        zoomDrawerController.toggle!();
      }
    ),
    elevation: 0, 
    backgroundColor: const Color(0xFFD0EDF2),
  );
}