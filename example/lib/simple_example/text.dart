import 'package:example/simple_example/simple_example_game.dart';
import 'package:flutter/cupertino.dart';

class Texter {
  String getText(String textId) {
    String setText = 'NOT FOUND!';

    if (languageSet == 'ger') {
      switch (textId) {
        case 'intro01':
          setText =
              'Oh je, bei einer Explosion ist die Drehbank in 1000 Teile zerfallen. Kannst du helfen Sie wieder zusammenbauen?';
      }
    }

    if (languageSet == 'eng') {
      switch (textId) {
        case 'intro01':
          setText = 'TODAY YEAH';
      }
    }

    return setText;
  }
}
