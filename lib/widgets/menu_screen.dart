import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../providers/portfolio_provider.dart';

class MenuScreen extends StatelessWidget {

  const MenuScreen({
    Key? key, required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          selected: false,
          selectedColor: const Color(0xFF00C0E4),
          selectedTileColor: Colors.white.withOpacity(0.8),
          textColor: Colors.white,
          iconColor: Colors.white,
          minLeadingWidth: 20,
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap:() {
            router.go('/home');
            zoomDrawerController.close!();
          },
        ),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            collapsedTextColor: Colors.white,
            textColor: Colors.white,
            initiallyExpanded: false,
            expandedAlignment: Alignment.topLeft,
            title: Row(
              children: const [
                Icon(Icons.person, color: Colors.white,),
                SizedBox(width: 16),
                Text('Detalles'),
                SizedBox(width: 16),
                Icon(Icons.arrow_drop_down, color: Colors.white,),
              ],
            ),
            children: [
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                minLeadingWidth: 20,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.person, color: Colors.white,),
                ),
                title: const Text('Hola'),
                onTap: () { 
                  router.go('/home');
                  context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.hola);
                  router.push('/details');
                  zoomDrawerController.close!();
                },
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                minLeadingWidth: 20,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.school, 
                    color: Colors.white,
                  ),
                ),
                title: const Text('Estudios'),
                onTap: () {  
                  router.go('/home');
                  context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.estudios);
                  router.push('/details');
                  zoomDrawerController.close!();
                },
              ),
              ListTile(
                selected: false,
                selectedColor: const Color(0xFF00C0E4),
                selectedTileColor: Colors.white.withOpacity(0.8),
                textColor: Colors.white,
                iconColor: const Color(0xFF00C0E4),
                minLeadingWidth: 20,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.work, color: Colors.white,),
                ),
                title: const Text('Experiencia'),
                onTap: () {
                  router.go('/home');
                  context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.exp);
                  router.push('/details');
                  zoomDrawerController.close!();
                },
              ),
              ListTile(
                selected: false,
                selectedColor: const Color(0xFF00C0E4),
                selectedTileColor: Colors.white.withOpacity(0.8),
                textColor: Colors.white,
                iconColor: Colors.white,
                minLeadingWidth: 20,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.code_rounded, color: Colors.white,),
                ),
                title: const Text('Proyectos'),
                onTap: () {
                  router.go('/home');
                  context.read<PortfolioAppProvider>().changePageAndTab(TabSelected.proyectos);
                  router.push('/details');
                  zoomDrawerController.close!();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
