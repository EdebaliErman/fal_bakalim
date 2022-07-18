import 'package:falci_kedi/view_items/Love_view.dart';
import 'package:falci_kedi/view_items/life_view.dart';
import 'package:falci_kedi/view_items/work_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
    var lifeBox = SizedBox(
      width: 100,
      height: 150,
      child: Lottie.network(_lifeAnimate),
    );

    var wordBox = SizedBox(
      width: 100,
      height: 150,
      child: Lottie.network(_workAnimate),
    );
    var loveBox = SizedBox(
      width: 100,
      height: 150,
      child: Lottie.network(_loveAnimate),
    );
    var selectText = Text(
      selecTextWrite,
      style: Theme.of(context).textTheme.headline4,
    );
    var headLineText = Text(
      headLineWrite,
      style: Theme.of(context).textTheme.headline2,
    );
    return Card(
      child: Column(
        children: [
          Padding(
            padding: PaddingItems._topEdge,
            child: headLineText,
          ),
          SizedBox(
            child: Padding(
              padding: PaddingItems._tfbEdge,
              child: Row(
                children: [
                  GoLoveView(context, loveBox),
                  GoWorkView(context, wordBox),
                  GoLifeView(context, lifeBox),
                ],
              ),
            ),
          ),
          Center(
            child: selectText,
          )
        ],
      ),
    );
  }

  InkWell GoLifeView(BuildContext context, SizedBox lifeBox) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LifeView())),
      child: lifeBox,
    );
  }

  InkWell GoWorkView(BuildContext context, SizedBox wordBox) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const WorkView())),
      child: wordBox,
    );
  }

  InkWell GoLoveView(BuildContext context, SizedBox loveBox) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoveView())),
      child: loveBox,
    );
  }
}

class PaddingItems {
  static const _tfbEdge = EdgeInsets.only(top: 100, left: 50, bottom: 100);
  static const _topEdge = EdgeInsets.only(top: 50);
}
