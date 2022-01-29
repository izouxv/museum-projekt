import 'package:bonfire/bonfire.dart';
//import 'package:flame/sprite.dart';
import 'package:example/shared/player/knight.dart';
//import 'package:example/shared/player/knight.dart';
import 'package:flutter/material.dart';

class PlayerInterface extends GameInterface {
  //static const followerWidgetTestId = 'BUTTON';
  late Sprite obstacleOne;
  late Sprite obstacleTwo;
  //KnightInterface();

  @override
  Future<void> onLoad() async {
    obstacleOne = await Sprite.load('blue_button1.png');
    obstacleTwo = await Sprite.load('joystick_knob.png');
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) {
    try {
      _drawKey(canvas);
    } catch (e) {}
    super.render(canvas);
  }

  void _drawKey(Canvas c) {
    if (gameRef.player != null && (gameRef.player as Knight).containKey) {
      obstacleOne.renderRect(c, Rect.fromLTWH(150, 20, 35, 30));
    }
    if (gameRef.player != null &&
        (gameRef.player as Knight).containObstacleTwo) {
      obstacleTwo.renderRect(c, Rect.fromLTWH(200, 50, 50, 50));
    }
  }

/*
  @override
  void onMount() {
    add(InterfaceComponent(
      sprite: Sprite.load('blue_button1.png'),
      spriteSelected: Sprite.load('blue_button2.png'),
      size: Vector2(40, 40),
      id: 5,
      position: Vector2(300, 20),
      selectable: false,
    ));
  }
  */
  /*
    add(TextInterfaceComponent(
      text: 'Text example',
      textConfig: TextStyle(
        color: Colors.white,
      ),
      id: 5,
      position: Vector2(350, 20),
      onTapComponent: (selected) {
        if (gameRef.player != null) {
          (gameRef.player as Knight).showEmote();
        }
      },
    ));
    super.onMount();

  */
}
