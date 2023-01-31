import 'package:flutter/material.dart';

class CardITem extends StatelessWidget {
  const CardITem({
    Key? key, 
    required this.descItem, 
    required this.iconItem,
  }) : super(key: key);

  final String descItem;
  final IconData iconItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20)
        )
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(
            iconItem,
            size: 30,
          ),
          const SizedBox(height: 8,),
          Text(
            descItem,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ), 
    );
  }
}