import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:skeletons/skeletons.dart';

import '../../../models/models.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, 
    required this.project,
  }) : super(key: key);

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xFFD0EDF2),
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFF00C0E4), 
                width: 10
              )
            )
          ),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16, ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.code_outlined,
                    size: 14,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      project.name.toUpperCase(),
                      style: const TextStyle(
                        height: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Row(
                  children: [
                    Icon(
                      project.platform == 'Móvil' ? Icons.phone_android : Icons.web,
                      color: Colors.black,
                      size: 14,
                    ),
                    const SizedBox(width: 8),
                    Text(project.platform),
                  ],
                ),
              ), 
              children:  [
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                  child: Text(
                    project.desc,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Text('Tecnologias usadas: ${project.technologies}'),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 200,
                  child: Swiper(
                    viewportFraction: 0.8,
                    scale: 0.9,
                    autoplay: true,
                    itemCount: 3,
                    //layout: SwiperLayout.STACK,
                    itemBuilder: (_, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:CachedNetworkImage(
                          imageUrl: project.img[index].url,
                          placeholder: (_, __) => const SkeletonAvatar(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}