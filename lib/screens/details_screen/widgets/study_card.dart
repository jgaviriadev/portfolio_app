import 'package:flutter/material.dart';

import '../../../models/models.dart';

class StudyCard extends StatelessWidget {
  const StudyCard({
    Key? key,
    required this.study,
  }) : super(key: key);

  final Study study;

  @override
  Widget build(BuildContext context) {
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
              children:[
                const Icon(
                  Icons.calendar_month,
                  size: 14,
                  //color: Color(0xFF00C0E4),
                ),
                const SizedBox(width: 8),
                Text(
                  study.date,
                  style: const TextStyle(
                    //color: Color(0xFF00C0E4),
                    height: 1,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              mainAxisSize : MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 116,
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children:[
                              const Icon(Icons.school, size: 14,),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  study.name,
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.business,size: 14,),
                              const SizedBox(width: 8),
                              Text(study.university)
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 14,
                              ),
                              const SizedBox(width: 8),
                              Text(study.location)
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                Container(
                  width: 30,
                  height: 116,
                  color: const Color(0xFF00C0E4),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        study.level,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}