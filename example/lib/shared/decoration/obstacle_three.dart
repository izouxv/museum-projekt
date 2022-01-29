import 'package:bonfire/bonfire.dart';
import 'package:example/shared/player/knight.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:example/manual_map/dungeon_map.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/lauf_project/text.dart';
import 'package:flutter/widgets.dart';

class ObstacleThree extends GameDecoration with Sensor {
  // ignore: unused_field
  bool _showConversation = false;

  ObstacleThree(Vector2 position)
      : super.withSprite(
          sprite: CommonSpriteSheet.obstacleThreeSprite,
          position: position,
          size: Vector2.all(DungeonMap.tileSize * 1),
        );

  @override
  void onContact(GameComponent collision) {
    if (collision is Knight) {
      FlameAudio.play('itemget.mp3');
      collision.containObstacleThree = true;
      _showConversation = true;
      _showIntroduction();

      removeFromParent();
    }
  }

  // talk Dialog
  void _showIntroduction() {
    TalkDialog.show(
        gameRef.context,
        [
          Say(
            text: [
              TextSpan(text: Texter().getText('obstacle03')),
            ],
            person: Container(
              width: 100,
              height: 100,
              child: CommonSpriteSheet.obstacleThreeSprite.asWidget(),
            ),
          ),
        ],
        onChangeTalk: (index) {},
        onFinish: () {});
  }
}
