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
          setText =
              'Ohne das Gehäuse würde die Drehmaschine in sich zusammenfallen. Es dient jedoch nicht nur als Halterung für das Innenleben sondern auch zum Schutz. Neben der Maschine bewahrt es auch den Menschen an ihr davor, schaden zu nehmen. Die vielen Bleche schützen zum Beispiel davor, dass er aus Versehen zwischen die Zahnräder greift.';
      }
      switch (textId) {
        case 'obstacle02':
          setText =
              'Was wäre eine Drehmaschine ohne Werkzeuge. Das Werkstück wird mit Bohrern und mehreren Arten von Meißeln bearbeitet, während es sich ganz schnell dreht. Mit Kurbeln und Schrauben kann man Winkel und Abständen millimetergenau bestimmen und so feine Werkstücke erstellen. Auf einem Schlitten kann es dazu noch hin und her gefahren werden. Die hier im Museum stehenden Drehmaschinen waren hauptsächlich dafür da, um die geschmiedeten Zylinder sauber abzufräsen, damit sie nicht nur glänzen, sondern auch perfekt und eben auf den Millimeter genau in den Motor passen. Witzig ist die Vorstellung, mit Hilfe einer Drehmaschine teile für eine Drehmaschine herzustellen oder?';
      }
      switch (textId) {
        case 'obstacle03':
          setText =
              'Der Motor der Drehmaschine bringt alles zum laufen. Er ist mit einem Lederriemen mit dem Getriebe am Spannfutter verbunden. So kann es sich mit drehen und das eingespannte Werkstück ebenfalls.Soll sich das Werkstück schneller drehen, so muss man den Riemen  auf ein kleineres Rad des Getriebes spannen. Um die Drehrichtung umzukehren, muss man ihn nur einmal verdrehen.';
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
