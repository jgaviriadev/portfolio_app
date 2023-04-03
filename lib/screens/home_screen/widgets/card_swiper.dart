import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../providers/portfolio_provider.dart';
import 'widgets.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: () {
              context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.hola);
              context.push('/details');
            },
            child: const CardITem(
              descItem: 'Acerca de mí',
              iconItem: Icons.badge_rounded,
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: () {
              context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.exp);
              context.push('/details');
            },
            child: const CardITem(
              descItem: 'Experiencia',
              iconItem: Icons.work,
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: () {
              context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.proyectos);
              context.push('/details');
            },
            child: const CardITem(
              descItem: 'Proyectos',
              iconItem: Icons.code_rounded,
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: () {
              context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.estudios);
              context.push('/details');
            },
            child: const CardITem(
              descItem: 'Estudios',
              iconItem: Icons.school,
            ),
          ),
          const SizedBox(width: 20,),
        ],
      ),
    );
  }
}