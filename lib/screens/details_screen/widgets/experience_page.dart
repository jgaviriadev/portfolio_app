import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/portfolio_provider.dart';
import 'package:portfolio_app/screens/details_screen/widgets/experience_card.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';


class ExperiencePage extends StatelessWidget {
  const ExperiencePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Selector<PortfolioAppProvider, User?>(
        selector: (_, v) => v.user,
        builder: (BuildContext context, User? user, _) {
          return user!= null ? ListView.builder(
            itemCount: user.experiences!.length,
            itemBuilder: (context, index) {
              return ExperienceCard(
                experience: user.experiences![index],
              );
            },
          ) : Container();
        }
      ),
    );
  }
}

