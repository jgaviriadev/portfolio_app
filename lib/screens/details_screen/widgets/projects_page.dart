import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';
import '../../../models/user.dart';
import 'project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Selector<PortfolioAppProvider, User?>(
        selector: (_, v) => v.user,
        builder: (context, User? user, _) {
          if(user!= null){
            return  ListView.builder(
              itemCount: user.experience!.length,
              itemBuilder: (context, index) {
                return ProjectCard(experience: user.experience![index]);
              },
            );
          } else {
            return Container();
          }
        }
      ),
    );
  }
}

