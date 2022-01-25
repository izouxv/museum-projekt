import 'package:bonfire/bonfire.dart';
//import 'package:example/manual_map/game_manual_map.dart';
import 'package:example/simple_example/simple_example_game.dart';
//import 'package:example/tiled_map/game_tiled_map.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  runApp(
    MaterialApp(
      home: Menu(),
    ),
  );
}

//Comment
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Die zerfallene Drehbank',
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text('Start'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SimpleExampleGame()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 150,
            ),
            SizedBox(
              height: 100,
              child: Text('SPRACHE',
                  style: TextStyle(fontSize: 40), textAlign: TextAlign.center),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('German'),
                onPressed: () {
                  languageSet = 'ger';
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('English'),
                onPressed: () {
                  languageSet = 'eng';
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: Center(
          child: Text(
            'Crafted with ♥ by Johannes Parth & Martin Henle',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
