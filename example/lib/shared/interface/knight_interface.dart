import 'package:bonfire/bonfire.dart';
import 'package:example/shared/player/knight.dart';
import 'package:flutter/material.dart';

class PlayerInterface extends GameInterface {
  late Sprite obstacleOne;
  late Sprite obstacleTwo;
  late Sprite obstacleThree;

  @override
  Future<void> onLoad() async {
    obstacleOne = await Sprite.load('blue_button1.png');
    obstacleTwo = await Sprite.load('joystick_knob.png');
    obstacleThree = await Sprite.load('joystick_knob.png');
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) {
    try {
      _drawObstacles(canvas);
    } catch (e) {}
    super.render(canvas);
  }

  void _drawObstacles(Canvas c) {
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleOne) {
      obstacleOne.renderRect(c, Rect.fromLTWH(150, 20, 35, 30));
    }
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleTwo) {
      obstacleTwo.renderRect(c, Rect.fromLTWH(200, 50, 50, 50));
    }
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleThree) {
      obstacleTwo.renderRect(c, Rect.fromLTWH(200, 50, 50, 50));
    }
  }
}
