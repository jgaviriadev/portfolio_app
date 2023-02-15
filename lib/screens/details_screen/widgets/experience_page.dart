import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import 'job_widget.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Selector<PortfolioAppProvider, List <Experience>?>(
        selector: (_, v) => v.user.experience,
        builder: (BuildContext context, List <Experience>? experience, _) {
          if(experience!=null){
            return ListView.builder(
              itemCount: experience.length,
              itemBuilder: (context, index) {
                return JobWidget(
                  experience: experience[index],
                );
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

