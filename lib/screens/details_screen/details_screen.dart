import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:portfolio_app/screens/details_screen/widgets/about_page.dart';
import 'package:portfolio_app/screens/details_screen/widgets/projects_page.dart';
import 'package:portfolio_app/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'widgets/experience_page.dart';
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
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Acerca de mí',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
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
              child: Selector<PortfolioAppProvider, PageController>(
                selector: (_, v) => v.pageController,
                shouldRebuild: (previous, next) => previous != next,
                builder: (BuildContext context, PageController pageController, _) {
                  //print(tabSelected.index);
                  return PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children:  const [
                      AboutPage(),
                      Center(
                        child: Text('Estudios'),
                      ),
                      ExperiencePage(),
                      ProjectsPage()
                    ],
                    onPageChanged: (value) => context.read<PortfolioAppProvider>().changeTabSelected(TabSelected.values[value]),
                  );
                }
              ),
            )
          )
        ],
      ),
    );
  }
}

