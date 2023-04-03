import 'package:flutter/material.dart';

import '../../../providers/portfolio_provider.dart';
import 'widgets.dart';


class TabMenu extends StatelessWidget {
  const TabMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          TabWidget(
            text: 'Hola',
            tab: TabSelected.hola ,
            icon: Icons.person,
          ),
          TabWidget(
            text: 'Estudios',
            tab: TabSelected.estudios,
            icon: Icons.school,
          ),
          TabWidget(
            text: 'Experiencia',
            tab: TabSelected.exp,
            icon: Icons.work,
          ),
          TabWidget(
            text: 'Proyectos',
            tab: TabSelected.proyectos,
            icon: Icons.code_rounded,
          ),
        ],
      ),
    );
  }
}