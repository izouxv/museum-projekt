import 'package:bonfire/bonfire.dart';
import 'package:example/lauf_project/game.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Die zerfallene Drehbank',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
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
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: Text('SPRACHEN',
                  style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
            ),
            SizedBox(
              width: 150,
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
              width: 150,
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
