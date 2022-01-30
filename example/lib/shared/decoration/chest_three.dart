import 'package:bonfire/bonfire.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:example/manual_map/dungeon_map.dart';
import 'package:example/shared/decoration/obstacle_three.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:flutter/widgets.dart';

class ChestThree extends GameDecoration with TapGesture {
  bool _observedPlayer = false;

  late TextPaint _textConfig;
  ChestThree(Vector2 position)
      : super.withAnimation(
          animation: CommonSpriteSheet.chestAnimated,
          size: Vector2.all(DungeonMap.tileSize * 1),
          position: position,
        ) {
    _textConfig = TextPaint(
      style: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: width / 2,
      ),
    );
  }

  @override
  void update(double dt) {
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_observedPlayer) {
            _observedPlayer = true;
            _showEmote();
          }
        },
        notObserved: () {
          _observedPlayer = false;
        },
        radiusVision: (2 * 32),
      );
    }
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (_observedPlayer) {
      _textConfig.render(
        canvas,
        'Touch me !!',
        Vector2(x - width / 1.5, center.y - (height + 5)),
      );
    }
  }

  @override
  void onTap() {
    FlameAudio.play('chestopen.mp3');
    if (_observedPlayer) {
      _addObstacleThree();
      removeFromParent();
    }
  }

  @override
  void onTapCancel() {}

  void _addObstacleThree() {
    gameRef.add(
      ObstacleThree(
        Vector2(
          position.translate(width * 0, 0).x,
          position.y - height * 0,
        ),
      ),
    );

    _addSmokeExplosion(position.translate(width * 2, 0));
    _addSmokeExplosion(position.translate(width * 2, height * 2));
  }

  void _addSmokeExplosion(Vector2 position) {
    gameRef.add(
      AnimatedObjectOnce(
        animation: CommonSpriteSheet.smokeExplosion,
        position: position,
        size: Vector2.all(DungeonMap.tileSize),
      ),
    );
  }

  void _showEmote() {
    gameRef.add(
      AnimatedFollowerObject(
        animation: CommonSpriteSheet.emote,
        target: this,
        size: size,
        positionFromTarget: size / -2,
      ),
    );
  }

  @override
  void onTapDown(int pointer, Vector2 position) {}

  @override
  void onTapUp(int pointer, Vector2 position) {}
}
