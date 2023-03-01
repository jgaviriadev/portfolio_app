import 'package:flutter/material.dart';
import 'project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: const [
          ProjectCard(),
          SizedBox(height: 10,),
          ProjectCard(),
          ProjectCard(),
        ],
      ),
    );
  }
}

