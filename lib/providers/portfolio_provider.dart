import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_app/models/user.dart';

enum TabSelected { hola, estudios, exp, proyectos, }

enum CustomUrl { 
  whatsapp('whatsapp://send?phone=573142196320', 'Whatsapp no está instalado'), 
  github('https://github.com/jgaviriadev', 'Could not launch'), 
  linkedin('https://www.linkedin.com/in/jhonatangaviria/', 'Could not launch');

  const CustomUrl(this.url, this.errorText);
  final String url;
  final String errorText;
}

class PortfolioAppProvider extends ChangeNotifier{

  TabSelected _tabSelected = TabSelected.hola;
  PageController _pageController = PageController(initialPage: 0);
  final String _url = 'https://raw.githubusercontent.com/jgaviriadev/jgaviriadev/main/data.json';
  User? user ;

  TabSelected get tabSelected => _tabSelected;
  PageController get pageController => _pageController;

  void changeTabSelected (TabSelected value){
    _tabSelected = value;
    notifyListeners();
  }

  void changePageAndTab (TabSelected value){
    _tabSelected = value;
    _pageController = PageController(initialPage: value.index);
    notifyListeners();
  }

  void changePageController (index){
    _pageController.jumpToPage(index);
    //_pageController.animateToPage(index, duration: Duration(microseconds: 1000), curve: Curves.easeIn);
    notifyListeners();
  }

  //get data from github
  Future getJsonData() async{
    final response = await http.get(Uri.parse(_url));
    if(response.statusCode == 200){
      user = User.fromJson(response.body);
      print('datos listos');
    } else {
      //return "error";
    }
    notifyListeners();
  }
}