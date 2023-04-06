import 'package:flutter/material.dart';

import '../../providers/portfolio_provider.dart';
import '../../utils/utils.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  WillPopScope(
      onWillPop:() => Utils.dialogCloseApp(context),
      child: Scaffold(
        appBar: customAppBar(context),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8,),
                      const Text(
                        'Jhonatan Gaviria',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      const Text('Desarrollador'),
                      const SizedBox(height: 8,),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Image.asset(
                              'assets/logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),
                    ],
                  ),
                ),
              )
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 4),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '¿Quieres trabajar conmigo?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),    
                              ),
                              SizedBox(height: 8,),
                              Text(
                                Utils.txtCommunicateWithMe,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ElevatedButton(
                          onPressed: () {
                            Utils.launchChat(CustomUrl.whatsapp, context);
                          },
                          child: const Text('Contáctame'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const CardSwiper(),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


