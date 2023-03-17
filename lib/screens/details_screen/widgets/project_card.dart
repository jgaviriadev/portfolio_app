import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:portfolio_app/models/user.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, 
    required this.experience,
  }) : super(key: key);

  final Experience experience;
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
              //childrenPadding: const EdgeInsets.all(18),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              leading: const SizedBox(
                height: double.infinity,
                child: Icon(
                  Icons.phone_android, 
                  size: 20, 
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Operaciones con conjuntos',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: const Text('Aplicativo  móvil'), 
              children:  [
                const Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 8,),
                const Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Text('Tecnologias usadas: Flutter, Dart'),
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
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/noImage.png'), 
                          image: NetworkImage('https://picsum.photos/400/300'), 
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16,),
                // const Padding(
                //   padding: EdgeInsets.only(left: 18, right: 18),
                //   child: Text('Tecnologias usadas: Flutter, Dart'),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}