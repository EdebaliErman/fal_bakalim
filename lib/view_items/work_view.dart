import 'dart:math';

import 'package:falci_kedi/string_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WorkView extends StatefulWidget {
  const WorkView({Key? key}) : super(key: key);

  @override
  State<WorkView> createState() => _WorkViewState();
}

class _WorkViewState extends State<WorkView> {
  final String _workAnimate =
      'https://assets7.lottiefiles.com/packages/lf20_AHBDHD.json';
  int workIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [WorkAnimatedBox(), WorkCard(context), WorkBox()],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox WorkAnimatedBox() {
    return SizedBox(
      height: 200,
      child: Lottie.network(_workAnimate),
    );
  }

  Padding WorkBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        height: 45,
        width: 85,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              setState(() {
                workIndex = Random().nextInt(11) + 1;
              });
            },
            child: Row(
              children: [
                Lottie.network(_workAnimate),
              ],
            )),
      ),
    );
  }

  Card WorkCard(BuildContext context) {
    return Card(
      child: SizedBox(
          height: 400,
          child: Text(
            FalTextView().work[workIndex],
            style: Theme.of(context).textTheme.subtitle2,
          )),
    );
  }
}
