import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/models.dart';
import '../../../providers/portfolio_provider.dart';
import '../../../utils/utils.dart';
import 'widgets.dart';


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
                maxRadius: 55,
              ),
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
                        GestureDetector(
                          child: Image.asset(
                            'assets/logoGithub.png',
                            height: 25,
                            width: 25,
                          ),
                          onTap: () => Utils.launchChat(CustomUrl.github, context),
                        ),
                        const SizedBox(width: 8,),
                        GestureDetector(
                          child: Image.asset(
                            'assets/logoLinkedin.png',
                            height: 25,
                            width: 25,
                          ),
                          onTap: () => Utils.launchChat(CustomUrl.linkedin, context),
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
            Utils.txtAboutMe,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20,),
          const Text(
            'Estas son algunas de las tecnologías que manejo actualmente:',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: SizedBox(
            width: double.infinity,
              child: SingleChildScrollView(
                child: Selector<PortfolioAppProvider, User?>(
                  selector: (p0, p1) => p1.user,
                  builder: (BuildContext context, User? user, _) {
                    if(user!=null){
                    return Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: user.skills!.map((e) => 
                        SkillCard(
                          name: e.name,
                          url: e.img,
                        )).toList(),
                    );
                    } else {
                      return Container();
                    }
                  }, 
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
