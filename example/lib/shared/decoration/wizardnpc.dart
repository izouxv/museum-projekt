import 'package:bonfire/bonfire.dart';
import 'package:example/manual_map/dungeon_map.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/lauf_project/text.dart';
import 'package:flutter/widgets.dart';

class WizardNPC extends GameDecoration {
  bool _showConversation = false;
  WizardNPC(
    Vector2 position,
  ) : super.withAnimation(
            animation: CommonSpriteSheet.npcAnimated,
            position: position,
            size: Vector2.all(DungeonMap.tileSize * 1));

  // Player Detection
  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (3 * 30),
      );
    }
  }

  // talk Dialog
  void _showIntroduction() {
    TalkDialog.show(
        gameRef.context,
        [
          Say(
            text: [
              TextSpan(text: Texter().getText('intro01')),
            ],
            personSayDirection: PersonSayDirection.RIGHT,
            person: Container(
              width: 100,
              height: 100,
              child: CommonSpriteSheet.npcAnimated.asWidget(),
            ),
          ),
        ],
        onChangeTalk: (index) {},
        onFinish: () {});
  }
}
