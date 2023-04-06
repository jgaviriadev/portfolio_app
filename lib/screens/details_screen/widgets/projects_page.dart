import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import '../../../providers/portfolio_provider.dart';
import 'widgets.dart';


class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    
    return Padding(
      padding: const EdgeInsets.only(left:20.0, right: 20, top: 20),
      child: Selector<PortfolioAppProvider, User?>(
        selector: (_, v) => v.user,
        builder: (context, User? user, _) {
          if(user!= null){
            return  ListView.builder(
              itemCount: user.projects!.length,
              itemBuilder: (context, index) {
                return ProjectCard(project: user.projects![index]);
              },
            );
          } else {
            return Container();
          }
        }
      ),
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}

