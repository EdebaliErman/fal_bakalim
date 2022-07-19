import 'package:falci_kedi/view_items/abstruct/base_fal_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FalView extends StatefulWidget {
  const FalView({Key? key, required this.falService, required this.animateUrl})
      : super(key: key);
  final BaseFalService falService;
  final String animateUrl;
  /*     'https://assets5.lottiefiles.com/private_files/lf30_jim7okck.json';
*/
  @override
  State<FalView> createState() => _FalViewState();
}

class _FalViewState extends State<FalView> {
  String randomFal = 'Rasgele fal için butona tıklayınız';

  String getRandom() {
    return widget.falService.getRandom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child:
                SizedBox(height: 200, child: Lottie.network(widget.animateUrl)),
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
                randomFal = getRandom();
              });
            },
            child: Row(
              children: [
                Lottie.network(widget.animateUrl),
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
            randomFal,
            style: Theme.of(context).textTheme.subtitle2,
          )),
    );
  }
}
