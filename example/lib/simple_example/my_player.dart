import 'package:bonfire/bonfire.dart';
import 'package:example/shared/util/player_sprite_sheet.dart';
import 'package:example/manual_map/dungeon_map.dart';

class MyPlayer extends SimplePlayer with ObjectCollision {
  MyPlayer(Vector2 position)
      : super(
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
          size: Vector2.all(DungeonMap.tileSize),
          position: position,
        ) {
    /// here we configure collision of the player
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2.all(32)),
        ],
      ),
    );
  }
}
