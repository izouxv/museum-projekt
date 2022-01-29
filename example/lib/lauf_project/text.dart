import 'package:example/lauf_project/simple_example_game.dart';

class Texter {
  String getText(String textId) {
    String setText = 'NOT FOUND!';

    if (languageSet == 'ger') {
      switch (textId) {
        case 'intro01':
          setText =
              'Oh je, beim üben meiner Zauberkräfte im Museum ist die Drehbank in ihre Einzelteile zerfallen. Kannst du mir helfen Sie wieder zusammen zu bauen? Möglicherweise wollte ich sie nur in eine Truhe stecken, damit sie aufgeräumt ist...';
      }
      switch (textId) {
        case 'obstacle01':
          setText = 'Sehr gut, du hast Obstacle 1 gefunden! BESCHREIBUNG...';
      }
      switch (textId) {
        case 'obstacle02':
          setText = 'Sehr gut, du hast Obstacle 1 gefunden! BESCHREIBUNG...';
      }
      switch (textId) {
        case 'obstacle03':
          setText = 'Sehr gut, du hast Obstacle 1 gefunden! BESCHREIBUNG...';
      }
    }

    if (languageSet == 'eng') {
      switch (textId) {
        case 'intro01':
          setText =
              'Oh dear, the lathe shattered into pieces in an explosion. Can you help me reassemble it?';
      }
    }

    return setText;
  }
}
