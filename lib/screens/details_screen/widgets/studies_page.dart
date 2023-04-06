import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import '../../../providers/portfolio_provider.dart';
import 'widgets.dart';

class StudiesPage extends StatefulWidget {
  const StudiesPage({super.key});

  @override
  State<StudiesPage> createState() => _StudiesPageState();
}

class _StudiesPageState extends State<StudiesPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Selector<PortfolioAppProvider, User?>(
      selector: (_, v) => v.user,
      builder: (BuildContext context, User? user, _) {
        return user !=null ? Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: FixedTimeline.tileBuilder(
              theme: TimelineTheme.of(context).copyWith(
                indicatorPosition: 0,
                nodePosition: 0,
                indicatorTheme: const IndicatorThemeData(
                  color: Color(0xFF00C0E4),
                ),
                connectorTheme: const ConnectorThemeData(
                  color: Color(0xFF00C0E4),
                  thickness: 0.6
                )
              ),
              builder: TimelineTileBuilder.connectedFromStyle(
                connectionDirection: ConnectionDirection.before,
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 3,
                contentsBuilder: (_, index) => StudyCard(study: user.studies![index])
              ),
            ),
          )
        ): Container();
      }
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}