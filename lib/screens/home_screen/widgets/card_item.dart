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
      width: 104,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  iconItem,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Expanded(
              child: Text(
                descItem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ), 
    );
  }
}