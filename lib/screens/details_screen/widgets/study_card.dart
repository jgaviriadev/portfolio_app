import 'package:flutter/material.dart';

class StudyCard extends StatelessWidget {
  const StudyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 100,
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.school, size: 14,),
                        SizedBox(width: 8),
                        Text(
                          'Ingeniero de sistemas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.business,size: 14,),
                        SizedBox(width: 8),
                        Text('Unitrópico')
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 14,
                        ),
                        SizedBox(width: 8),
                        Text('Yopal - Casanare')
                      ],
                    ),
                  ],
                ),
              ),
            )
          ),
          Container(
            width: 30,
            height: 100,
            color: const Color(0xFF00C0E4),
            child: const Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'SUPERIOR',
                  style: TextStyle(
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
    );
  }
}