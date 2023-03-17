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
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: Card(
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
              tilePadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                        child: Row(
                          children: [
                            const Icon(
                              Icons.business,
                              size: 14,
                              //color: Colors.black,
                            ),
                            const SizedBox(width: 4,),
                            Text(experience.company),
                          ],
                        )
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            size: 14,
                          ),
                          SizedBox(width: 4,),
                          Text(
                            'REMOTO',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        size: 14,
                        //color: Colors.black,
                      ),
                      const SizedBox(width: 4,),
                      Text(
                        '${experience.beginning} - ${experience.finished}',
                        style: const TextStyle(
                          //fontSize: 10,
                        ),
                      ),
                    ],
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
      ),
    );
  }
}