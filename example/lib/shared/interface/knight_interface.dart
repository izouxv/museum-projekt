import 'package:bonfire/bonfire.dart';
import 'package:example/shared/player/knight.dart';
import 'package:flutter/material.dart';

class PlayerInterface extends GameInterface {
  late Sprite invEmpty;
  late Sprite obstacleOne;
  late Sprite obstacleTwo;
  late Sprite obstacleThree;

  @override
  Future<void> onLoad() async {
    invEmpty = await Sprite.load('blue_button1.png');
    obstacleOne = await Sprite.load('itens/obstacle_one_inventory.png');
    obstacleTwo = await Sprite.load('itens/obstacle_two_inventory.png');
    obstacleThree = await Sprite.load('itens/obstacle_three_inventory.png');
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
    invEmpty.renderRect(c, Rect.fromLTWH(150, 20, 50, 50));
    invEmpty.renderRect(c, Rect.fromLTWH(225, 20, 50, 50));
    invEmpty.renderRect(c, Rect.fromLTWH(300, 20, 50, 50));
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleOne) {
      obstacleOne.renderRect(c, Rect.fromLTWH(150, 20, 50, 50));
    }
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleTwo) {
      obstacleTwo.renderRect(c, Rect.fromLTWH(225, 20, 50, 50));
    }
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleThree) {
      obstacleThree.renderRect(c, Rect.fromLTWH(300, 20, 50, 50));
    }
  }
}
