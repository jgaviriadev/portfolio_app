import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color(0xFFD0EDF2),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFF00C0E4), 
              width: 10
            )
          )
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            leading: const Icon(Icons.abc),
            title: const Text(
              'Operaciones con conjuntos',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: const Text('Aplicativo  móvil'), 
            children: const [
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8,),
              Text('Tecnologias usadas: Flutter, Dart')
            ],
          ),
        ),
      ),
    );
  }
}