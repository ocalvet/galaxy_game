import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' show TextPainter, Colors;

class GalaxyGame extends BaseGame {
  @override
    void render(Canvas canvas) {
      super.render(canvas);

    String text = 'Galaxy Game';
    TextPainter p = Flame.util
        .text(text, color: Colors.white, fontSize: 48.0);
    p.paint(canvas,
        new Offset(size.width - p.width - 10, size.height - p.height - 10));
    }
}
