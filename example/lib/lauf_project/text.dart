import 'package:example/lauf_project/simple_example_game.dart';

class Texter {
  String getText(String textId) {
    String setText = 'NOT FOUND!';

    if (languageSet == 'ger') {
      switch (textId) {
        case 'intro01':
          setText =
              'Oh je, beim üben meiner Zauberkräfte in den Katakomben des Museums ist die Drehbank in ihre Einzelteile zerfallen. Kannst du mir helfen Sie wieder zusammen zu bauen? Möglicherweise wollte ich sie nur in eine Truhe stecken, damit sie aufgeräumt ist...';
      }
      switch (textId) {
        case 'quest01':
          setText =
              'Willkommen in der Halle der Könige! Hier gibt es viele Schätze und leider auch viele Truhen. Dennoch hoffe ich, dass du die Richtige findest. Wenn du fertig bist folge dem Gang südlich zur großen Gruft.';
      }
      switch (textId) {
        case 'obstacle01':
          setText =
              'Ohne das Gehäuse würde die Drehmaschine in sich zusammenfallen. Es dient jedoch nicht nur als Halterung für das Innenleben sondern auch zum Schutz. Neben der Maschine bewahrt es auch den Menschen der sie bedient Schaden zu nehmen. Die vielen Bleche schützen zum Beispiel davor, dass er aus Versehen zwischen die Zahnräder greift.';
      }
      switch (textId) {
        case 'obstacle02':
          setText =
              'Was wäre eine Drehmaschine ohne Werkzeuge. Das Werkstück wird mit Bohrern und mehreren Arten von Meißeln bearbeitet, während es sich ganz schnell dreht. Mit Kurbeln und Schrauben kann man Winkel und Abständen millimetergenau bestimmen und so feine Werkstücke erstellen. Auf einem Schlitten kann es dazu noch hin und her gefahren werden. Die hier im Museum stehenden Drehmaschinen waren hauptsächlich dafür da, um die geschmiedeten Zylinder sauber abzufräsen, damit sie nicht nur glänzen, sondern auch perfekt und eben auf den Millimeter genau in den Motor passen. Witzig ist die Vorstellung, mit Hilfe einer Drehmaschine teile für eine Drehmaschine herzustellen oder?';
      }
      switch (textId) {
        case 'obstacle03':
          setText =
              'Der Motor der Drehmaschine bringt alles zum Laufen. Er ist mit einem Lederriemen mit dem Getriebe am Spannfutter verbunden. So kann es sich mit drehen und das eingespannte Werkstück ebenfalls.Soll sich das Werkstück schneller drehen, so muss man den Riemen  auf ein kleineres Rad des Getriebes spannen. Um die Drehrichtung umzukehren, muss man ihn nur einmal verdrehen.';
      }
    }

    if (languageSet == 'eng') {
      switch (textId) {
        case 'intro01':
          setText =
              'Oh dear, while practicing my magic powers in the Catacomb Museum, the lathe disintegrated into its parts. Can you help me put them back together? Maybe I just wanted to put it in a trunk to keep it tidy. . .';
      }
      switch (textId) {
        case 'quest01':
          setText =
              'Welcome to the Hall of Kings! Here there are many treasures and unfortunately also many chests. Still, I hope you find the right one. When youre done, follow the passage south to the great tomb.';
      }
      switch (textId) {
        case 'obstacle01':
          setText =
              'Without the housing, the lathe would collapse. However, it serves not only as a bracket for the interior but also as a protection. In addition to the machine, it also protects the people who operate it from taking damage. For example, the many plates protect it from accidental grip between the gears.';
      }
      switch (textId) {
        case 'obstacle02':
          setText =
              'What would a lathe be without tools? The workpiece is machined with drills and several types of chisels while it rotates very fast. Cranks and screws can be used to determine angles and distances to the millimetre and create fine workpieces. On a sled it can also be driven back and forth. The lathes on display here in the museum were mainly designed to cleanly mill the forged cylinders, so that they not only shine, but also fit perfectly and precisely to the millimetre into the engine. Funny is the idea of making parts for a lathe with the help of a lathe, isn’t it?';
      }
      switch (textId) {
        case 'obstacle03':
          setText =
              'The lathe motor makes everything work. It is connected to the gearbox on the chuck with a leather strap. This allows it to rotate and the clamped workpiece as well. If the workpiece rotates faster, you have to tighten the belt on a smaller wheel of the transmission. To reverse the direction of rotation, you only have to twist it once.';
      }
    }

    return setText;
  }
}
