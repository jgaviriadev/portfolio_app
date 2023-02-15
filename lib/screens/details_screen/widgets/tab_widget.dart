import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/portfolio_provider.dart';

class TabWidget extends StatelessWidget {

  final String text;
  final TabSelected tab;
  final IconData icon;

  const TabWidget({
    Key? key, 
    required this.text, 
    required this.tab, 
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.read<PortfolioAppProvider>().changeTabSelected(tab);
            context.read<PortfolioAppProvider>().changePageController(tab.index);
          },
          child: Selector<PortfolioAppProvider, TabSelected>(
            selector: (_, v) => v.tabSelected,
            builder: (BuildContext context, TabSelected tabSelected, _) {
              return Container(
                height: 60,
                width: 60,
                decoration:  BoxDecoration(
                  color: tabSelected != tab ? Colors.white : const Color(0xFF00C0E4),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20)
                  )
                ),
                child: Icon(
                  icon,
                  size: 30,
                ),
              );
            }
          ),
        ),
        const SizedBox(height: 4),
        Text(text)
      ],
    );
  }
}