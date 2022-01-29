import 'package:bonfire/bonfire.dart';
import 'package:example/shared/player/knight.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:example/manual_map/dungeon_map.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/lauf_project/text.dart';
import 'package:flutter/widgets.dart';

class ObstacleOne extends GameDecoration with Sensor {
  // ignore: unused_field
  bool _showConversation = false;

  ObstacleOne(Vector2 position)
      : super.withSprite(
          sprite: CommonSpriteSheet.obstacleOneSprite,
          position: position,
          size: Vector2.all(DungeonMap.tileSize * 0.5),
        );

  @override
  void onContact(GameComponent collision) {
    FlameAudio.play('itemget.mp3');
    if (collision is Knight) {
      collision.containObstacleOne = true;
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
              TextSpan(text: Texter().getText('obstacle01')),
            ],
            person: Container(
              width: 100,
              height: 100,
              child: CommonSpriteSheet.obstacleOneSprite.asWidget(),
            ),
          ),
        ],
        onChangeTalk: (index) {},
        onFinish: () {});
  }
}
