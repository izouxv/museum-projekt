import 'package:bonfire/bonfire.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/simple_example/text.dart';
import 'package:flutter/widgets.dart';

class WizardNPC extends GameDecoration {
  bool _showConversation = false;
  WizardNPC(
    Vector2 position,
  ) : super.withAnimation(
            animation: CommonSpriteSheet.torchAnimated,
            position: position,
            size: Vector2(32 * 0.8, 32));

// Show Dialog when goes to NPC
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
        radiusVision: (2 * 16),
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
          ),
        ],
        onChangeTalk: (index) {},
        onFinish: () {});
  }
}
