import 'dart:math';

abstract class BaseFalService {
  List<String> get myFals;

  String getRandom() {
    int index = Random().nextInt(myFals.length);
    return myFals[index];
  }
}
