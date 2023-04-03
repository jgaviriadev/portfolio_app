import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/portfolio_provider.dart';

class Utils {
  Utils._();
  
  static launchChat (CustomUrl data, context) async {
    final Uri url = Uri.parse(data.url);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.error,
        body: Center(
          child: Text(
            data.errorText,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        btnOkText: 'Cerrar',
        btnOkColor: const Color(0xFF00C0E4),
        btnOkOnPress: () {}
      ).show();
    }
  }
  
  static Future<bool> dialogCloseApp(context) async {
    bool willPop = true;
    await AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.warning,
      body: const Center(
        child: Text(
          '¿Deseas cerrar la aplicación?',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      btnOkText: 'Sí',
      btnCancelText: 'No',
      btnCancelOnPress: () => willPop = false,
      btnOkOnPress: () => willPop = true
    ).show();
    return willPop;
  }

  //long texts
  static const txtCommunicateWithMe = 'Si quieres comunicarte conmigo o estás interesado en iniciar un proyecto juntos, ponte en contacto.';
  static const txtAboutMe = 'Hola, soy Jhonatan Gaviria. Ingeniero de sistemas, me especializo en crear sitios web y aplicaciones móviles elegantes y modernas. Constantemente aprendo nuevas tecnologias siendo autodidacta.';
}