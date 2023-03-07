import 'package:flutter/material.dart';
import 'package:portfolio_app/models/user.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key, 
    required this.experience,
  }) : super(key: key);

  final Experience experience;
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
            childrenPadding: const EdgeInsets.all(16),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: Text(
              experience.jobTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(experience.company)
                    ),
                    Text(experience.country),
                  ],
                ),
                Text(
                  '${experience.beginning} - ${experience.finished}',
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 4,)
              ],
            ), 
            children: [
              Text(
                experience.desc,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 8,),
              const Text('Tecnologias usadas: Flutter, Dart')
            ],
          ),
        ),
      ),
    );
  }
}