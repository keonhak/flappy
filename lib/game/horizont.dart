import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/components/resizable.dart';

import 'package:flame/components/composed_component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter_bird/game/config.dart';

class Horizon extends PositionComponent with Resizable, ComposedComponent {
  
  HorizonGround ground;

  Horizon(Image spriteImage) {
    Sprite sprite = Sprite.fromImage(
      spriteImage,
      width: Dimensions.horizontWidth,
      height: Dimensions.horizontHeight,
      y: 0.0,
      x: 0.0,
    );

    this.ground = HorizonGround(sprite);
    this..add(ground);
  }
}

class HorizonGround extends SpriteComponent with Resizable {
  HorizonGround(Sprite sprite)
      : super.fromSprite(
            480, 960, sprite);
}