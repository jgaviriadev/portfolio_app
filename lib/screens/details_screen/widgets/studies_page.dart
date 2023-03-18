import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/details_screen/widgets/study_card.dart';
import 'package:timelines/timelines.dart';

class StudiesPage extends StatelessWidget {
  const StudiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            connectorStyleBuilder: (context, index) {
              return ConnectorStyle.solidLine;
            },
            indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
            itemCount: 3,
            contentsBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 14,
                            //color: Color(0xFF00C0E4),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '2016 - 2021',
                            style: TextStyle(
                              //color: Color(0xFF00C0E4),
                              height: 1,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const StudyCard()
                  ],
                ),
              );
            },
          ),
        ),
      )
    );
  }
}

