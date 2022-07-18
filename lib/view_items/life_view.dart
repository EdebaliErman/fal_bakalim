import 'dart:math';

import 'package:falci_kedi/string_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LifeView extends StatefulWidget {
  const LifeView({Key? key}) : super(key: key);

  @override
  State<LifeView> createState() => _LifeViewState();
}

class _LifeViewState extends State<LifeView> {
  final String _lifeAnimate =
      'https://assets5.lottiefiles.com/private_files/lf30_jim7okck.json';
  int lifeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: SizedBox(height: 200, child: Lottie.network(_lifeAnimate)),
          ),
          LifeCard(context),
          LifeBox()
        ],
      ),
    );
  }

  Padding LifeBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 45,
        width: 85,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              setState(() {
                lifeIndex = Random().nextInt(10) + 1;
              });
            },
            child: Row(
              children: [
                Lottie.network(_lifeAnimate),
              ],
            )),
      ),
    );
  }

  Card LifeCard(BuildContext context) {
    return Card(
      child: SizedBox(
          height: 400,
          child: Text(
            FalTextView().life[lifeIndex],
            style: Theme.of(context).textTheme.subtitle2,
          )),
    );
  }
}
