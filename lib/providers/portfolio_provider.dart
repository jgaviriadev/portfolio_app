import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_app/models/user.dart';
import 'package:url_launcher/url_launcher.dart';

enum TabSelected { hola, estudios, exp, proyectos, }

class PortfolioAppProvider extends ChangeNotifier{

  PortfolioAppProvider(){
    getJsonData();
  }

  TabSelected _tabSelected = TabSelected.hola;
  PageController _pageController = PageController(initialPage: 0);
  final String _url = 'https://raw.githubusercontent.com/jgaviriadev/jgaviriadev/main/data.json';
  final Uri _urlWhatsapp = Uri.parse('whatsapp://send?phone=573142196320');
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


  Future getJsonData() async{
    final response = await http.get(Uri.parse(_url));
    if(response.statusCode == 200){
      user = User.fromJson(response.body);
    } else {
      //return "error";
    }
    notifyListeners();
  }

  Future<void> launchChat(BuildContext context) async {
    if (await canLaunchUrl(_urlWhatsapp)) {
      await launchUrl(_urlWhatsapp);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Whatsapp no está instalado")));
    }
  }

}