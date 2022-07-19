import 'package:falci_kedi/view_items/abstruct/base_fal_service.dart';
import 'package:falci_kedi/view_items/abstruct/life_fal.dart';
import 'package:falci_kedi/view_items/abstruct/love_fal.dart';
import 'package:falci_kedi/view_items/fal_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'abstruct/work_fal.dart';

class MenuLearnView extends StatefulWidget {
  const MenuLearnView({Key? key}) : super(key: key);

  @override
  State<MenuLearnView> createState() => _MenuLearnViewState();
}

class _MenuLearnViewState extends State<MenuLearnView> {
  final String _loveAnimate =
      'https://assets4.lottiefiles.com/packages/lf20_8fl3677q.json';
  final String _lifeAnimate =
      'https://assets5.lottiefiles.com/private_files/lf30_jim7okck.json';
  final String _workAnimate =
      'https://assets7.lottiefiles.com/packages/lf20_AHBDHD.json';

  final String selecTextWrite = ' Yukarıdan Bir Fal seçiniz..';

  final String headLineWrite = ' Hoşgeldiniz';
  @override
  Widget build(BuildContext context) {
    SizedBox getFalBox({required String animateUrl}) {
      return SizedBox(
        width: 100,
        height: 150,
        child: Lottie.network(animateUrl),
      );
    }

    Text getSelectText(String text, TextStyle? style) {
      return Text(text, style: style);
    }

    // var selectText = Text(
    //   selecTextWrite,
    //   style: Theme.of(context).textTheme.headline4,
    // );
    // var headLineText = Text(
    //   headLineWrite,
    //   style: Theme.of(context).textTheme.headline2,
    // );
    return Card(
      child: Column(
        children: [
          Padding(
            padding: PaddingItems._topEdge,
            child: getSelectText(
                headLineWrite, Theme.of(context).textTheme.headline2),
          ),
          SizedBox(
            child: Padding(
              padding: PaddingItems._tfbEdge,
              child: Row(
                children: [
                  goFalView(
                      context,
                      getFalBox(animateUrl: _loveAnimate),
                      LoveFal(),
                      'https://assets4.lottiefiles.com/packages/lf20_8fl3677q.json'),
                  goFalView(
                      context,
                      getFalBox(animateUrl: _workAnimate),
                      WorkFal(),
                      'https://assets7.lottiefiles.com/packages/lf20_AHBDHD.json'),
                  goFalView(
                      context,
                      getFalBox(animateUrl: _lifeAnimate),
                      LifeFal(),
                      'https://assets5.lottiefiles.com/private_files/lf30_jim7okck.json'),
                ],
              ),
            ),
          ),
          Center(
            child: getSelectText(
                selecTextWrite, Theme.of(context).textTheme.headline4),
          )
        ],
      ),
    );
  }

  InkWell goFalView(BuildContext context, SizedBox child,
      BaseFalService falService, String animeteUrl) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FalView(
                    falService: falService,
                    animateUrl: animeteUrl,
                  ))),
      child: child,
    );
  }
}

class PaddingItems {
  static const _tfbEdge = EdgeInsets.only(top: 100, left: 50, bottom: 100);
  static const _topEdge = EdgeInsets.only(top: 50);
}
