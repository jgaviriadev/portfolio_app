import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:portfolio_app/utils/utils.dart';
import 'package:portfolio_app/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

import 'widgets/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  WillPopScope(
      onWillPop:() => Utils.dialogCloseApp(context),
      child: Scaffold(
        appBar: customAppBar(context),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8,),
                      const Text(
                        'Jhonatan Gaviria',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      const Text('Desarrollador'),
                      const SizedBox(height: 8,),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Image.asset(
                              'assets/logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),
                    ],
                  ),
                ),
              )
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 4),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '¿Quieres trabajar conmigo?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),    
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Si quieres comunicarte conmigo o estás interesado en iniciar un proyecto juntos, ponte en contacto.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ElevatedButton(
                          onPressed: () {
                            Utils.launchChat(CustomUrl.whatsapp, context);
                          },
                          child: const Text('Contáctame'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SingleChildScrollView(
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
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
