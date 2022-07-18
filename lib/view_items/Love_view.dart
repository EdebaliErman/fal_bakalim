import 'dart:math';

import 'package:falci_kedi/string_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoveView extends StatefulWidget {
  const LoveView({Key? key}) : super(key: key);

  @override
  State<LoveView> createState() => _MainViewState();
}

class _MainViewState extends State<LoveView> {
  final String _loveAnimate =
      'https://assets4.lottiefiles.com/packages/lf20_8fl3677q.json';
  int loveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Lottie.network(_loveAnimate),
          ),
          LoveCard(context),
          LoveBox()
        ],
      ),
    );
  }

  SizedBox LoveBox() {
    return SizedBox(
      height: 45,
      width: 85,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {
            setState(() {
              loveIndex = Random().nextInt(10) + 1;
            });
          },
          child: Row(
            children: [
              Lottie.network(_loveAnimate),
            ],
          )),
    );
  }

  Card LoveCard(BuildContext context) {
    return Card(
      child: SizedBox(
          height: 400,
          child: Text(
            FalTextView().love[loveIndex],
            style: Theme.of(context).textTheme.subtitle2,
          )),
    );
  }
}
