import 'package:flutter/material.dart';

import 'skill_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xFFD0EDF2),
                backgroundImage: AssetImage('assets/logo.png'),
                //backgroundColor: Colors.green,
                maxRadius: 55,
              ),
              //onst SizedBox(width: 20,),
              const SizedBox(
                height: 100,
                width: 30,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Nombre: Jhonatan Gaviria'),
                    const Text('Edad: 25'),
                    const Text('País: Colombia'),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Image.asset(
                          'assets/logoGithub.png',
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(width: 8,),
                        Image.asset(
                          'assets/logoLinkedin.png',
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ],
          ),
          const SizedBox(height: 20,),
          const Text(
            'Hola, soy Jhonatan Gaviria. Ingeniero de sistemas, me especializo en crear sitios web y aplicaciones móviles elegantes y modernas. Constantemente aprendo nuevas tecnologias siendo autodidacta.',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20,),
          const Text(
            'Estas son algunas de las tecnologías que manejo actualmente:',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: const [
                SkillCard(
                  name: 'Flutter',
                  url: 'https://miro.medium.com/max/320/0*ObJbOfJnx4QIPUq9.png',
                ),
                SkillCard(
                  name: 'Dart',
                  url: 'https://miro.medium.com/max/320/0*ObJbOfJnx4QIPUq9.png',
                ),     
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
