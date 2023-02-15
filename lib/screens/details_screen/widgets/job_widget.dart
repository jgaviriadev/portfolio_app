import 'package:flutter/material.dart';
import 'package:portfolio_app/models/user.dart';

class JobWidget extends StatelessWidget {
  const JobWidget({
    Key? key, 
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(
          experience.jobTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            //fontSize: 16
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              experience.company,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                //fontSize: 16
              ),
            ),
            Text(
              experience.country,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Text('${experience.beginning} - ${experience.finished}'),
        const SizedBox(height: 12),
        Text(
          experience.desc,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}