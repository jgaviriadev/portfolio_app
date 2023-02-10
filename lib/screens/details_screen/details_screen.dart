import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:portfolio_app/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'widgets/tab_widget.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'About me',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TabWidget(
                  text: 'Hola',
                  tab: TabSelected.hola ,
                  icon: Icons.person,
                ),
                //SizedBox(width: 30),
                TabWidget(
                  text: 'Estudios',
                  tab: TabSelected.estudios,
                  icon: Icons.school,
                ),
                //SizedBox(width: 30),
                TabWidget(
                  text: 'Experiencia',
                  tab: TabSelected.exp,
                  icon: Icons.work,
                ),
                //SizedBox(width: 30),
                TabWidget(
                  text: 'Proyectos',
                  tab: TabSelected.proyectos,
                  icon: Icons.code_rounded,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                )
              ), 
              child: Selector<PortfolioAppProvider, TabSelected>(
                selector: (_, v) => v.tabSelected,
                builder: (BuildContext context, TabSelected tabSelected, _) {
                  switch (tabSelected) {
                    case TabSelected.hola:
                      return const Text('Hola');

                    case TabSelected.estudios:
                      return const Text('Estudios');

                    case TabSelected.exp:
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'MYADTECH',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    //fontSize: 16
                                  ),
                                ),
                                Text(
                                  'México',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Text('Oct 2022 - Dic 2022'),
                            const SizedBox(height: 12),
                            const Text(
                              'Desarrollador Móvil',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 8),
                            const Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      );

                    case TabSelected.proyectos:
                      return const Text('Proyectos');

                    default:
                      return const Text('default');
                  }
                }
              ),
            )
          )
        ],
      ),
    );
  }
}