import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../providers/portfolio_provider.dart';
import '../screens/screens.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            selected: false,
            selectedColor: const Color(0xFF00C0E4),
            selectedTileColor: Colors.white.withOpacity(0.8),
            textColor: Colors.white,
            iconColor: Colors.white,
            minLeadingWidth: 20,
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              
            },
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedTextColor: Colors.white,
              textColor: Colors.white,
              //backgroundColor: Colors.white.withOpacity(0.8),
              //collapsedBackgroundColor: Colors.green,
              initiallyExpanded: true,
              expandedAlignment: Alignment.topLeft,
              //childrenPadding: EdgeInsets.only(left: 20),
              //leading: Icon(Icons.home),
              title: Row(
                children: const [
                  Icon(Icons.person, color: Colors.white,),
                  SizedBox(width: 16),
                  Text('Detalles'),
                  SizedBox(width: 16),
                  Icon(Icons.arrow_drop_down, color: Colors.white,),
                ],
              ),
              children: [
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  minLeadingWidth: 20,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                  title: Text('Hola'),
                  onTap: () {  
                  
                  },
                ),
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  minLeadingWidth: 20,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.school, 
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Estudios'),
                  onTap: () {  
                  },
                ),
                ListTile(
                  selected: true,
                  selectedColor: const Color(0xFF00C0E4),
                  selectedTileColor: Colors.white.withOpacity(0.8),
                  textColor: Colors.white,
                  iconColor: const Color(0xFF00C0E4),
                  minLeadingWidth: 20,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.work, color: const Color(0xFF00C0E4),),
                  ),
                  title: Text('Experiencia'),
                  onTap: () {  
                  },
                ),
                ListTile(
                  selected: false,
                  selectedColor: const Color(0xFF00C0E4),
                  selectedTileColor: Colors.white.withOpacity(0.8),
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  minLeadingWidth: 20,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.code_rounded, color: Colors.white,),
                  ),
                  title: Text('Proyectos'),
                  onTap: () {  
                  },
                ),
              ],
            ),
          ),
        ],
      );
  }
}
