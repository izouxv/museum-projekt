//import 'package:example/simple_example/bonfire_ref.dart';
import 'package:bonfire/bonfire.dart';

//import 'package:bonfire/background/background_image_game.dart';

import 'package:example/simple_example/my_player.dart';
import 'package:flutter/material.dart';

import 'package:example/shared/decoration/chest.dart';
import 'package:example/shared/decoration/chest_two.dart';
import 'package:example/shared/decoration/chest_three.dart';
import 'package:example/shared/decoration/wizardnpc.dart';

import 'package:flame_audio/flame_audio.dart';
//import 'package:example/shared/decoration/barrel_dragable.dart';
//import 'package:example/shared/decoration/torch.dart';
//import 'package:example/shared/enemy/goblin.dart';
//import 'package:example/manual_map/dungeon_map.dart';

import 'package:bonfire/base/bonfire_game_interface.dart';
//import 'package:flame/components.dart';

//import 'package:example/shared/util/player_sprite_sheet.dart';
//import 'package:example/shared/util/common_sprite_sheet.dart';
//import 'package:example/simple_example/text.dart';
//import 'package:example/shared/decoration/mission01.dart';

String languageSet = 'ger';
String streamText = 'BEGIN';

mixin BonfireHasGameRef {
  BonfireGameInterface? _gameRef;

  BonfireGameInterface get gameRef {
    final ref = _gameRef;
    if (ref == null) {
      throw 'Accessing gameRef before the component was added to the game!';
    }
    return ref;
  }

  bool get hasGameRef => _gameRef != null;

  set gameRef(BonfireGameInterface gameRef) {
    _gameRef = gameRef;
    if (this is Component) {
      (this as Component)
          .children
          .whereType<BonfireHasGameRef>()
          .forEach((e) => e.gameRef = gameRef);
    }
  }
}

class SimpleExampleGame extends StatelessWidget {
  const SimpleExampleGame({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    //Background Music
    FlameAudio.loopLongAudio('background.mp3');
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap(
        'tiled/mapa2.json',
        forceTileSize: Size(32, 32),
        objectsBuilder: {
          'chest': (properties) => Chest(properties.position),
          'chest_two': (properties) => ChestTwo(properties.position),
          'chest_three': (properties) => ChestThree(properties.position),
          'wizardnpc': (properties) => WizardNPC(properties.position)
        },
      ),
      //background: BackgroundImageGame(imagePath: "tileset/image_bg.jpeg", offset: Vector2(0, 0)),
      //lightingColorGame: Colors.black.withOpacity(0.7),
      cameraConfig: CameraConfig(
        smoothCameraEnabled: true,
        smoothCameraSpeed: 2,
      ),
      player: MyPlayer(Vector2(100, 75)),
    );
  }
}
