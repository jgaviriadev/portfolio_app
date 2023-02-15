import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_app/models/user.dart';

enum TabSelected { hola, estudios, exp, proyectos, }

class PortfolioAppProvider extends ChangeNotifier{

  PortfolioAppProvider(){
    //getPerson();
    getJsonData();
  }

  
  TabSelected _tabSelected = TabSelected.hola;
  final PageController _pageController = PageController(initialPage: 0);
  final String _url = 'https://raw.githubusercontent.com/jgaviriadev/jgaviriadev/main/data.json';
  late User user ;

  TabSelected get tabSelected => _tabSelected;
  PageController get pageController => _pageController;

  void changeTabSelected (TabSelected value){
    _tabSelected = value;
    notifyListeners();
  }

  void changePageController (index){
    _pageController.jumpToPage(index);
    //_pageController.animateToPage(index, duration: Duration(microseconds: 1000), curve: Curves.easeIn);
    notifyListeners();
  }

  Future getJsonData() async{
    final response = await http.get(Uri.parse(_url));
    if(response.statusCode == 200){
      user = User.fromJson(response.body);
    } else {
      //return "error";
    }
  }

}