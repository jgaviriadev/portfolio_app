import 'package:flutter/material.dart';

enum TabSelected { hola, exp, proyectos, estudios }

class PortfolioAppProvider extends ChangeNotifier{
  
  TabSelected tabSelected = TabSelected.hola;

  void changeTabSelected (TabSelected value){
    tabSelected = value;
    print(tabSelected);
    notifyListeners();
  }
}