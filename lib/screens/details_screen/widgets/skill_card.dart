import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key, required this.name, required this.url,
  }) : super(key: key);

  final String name;
  final String url;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
      ),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              width: 15,
              height: 15,
              imageUrl: url,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.amber,),
            ),
            const SizedBox(width: 8,),
            Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}