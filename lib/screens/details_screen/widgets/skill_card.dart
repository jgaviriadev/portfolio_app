import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key, required this.bg, required this.colorText,
  }) : super(key: key);

  final Color bg;
  final Color colorText;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
      ),
      color: bg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Flutter',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: colorText
          ),
        ),
      ),
    );
  }
}