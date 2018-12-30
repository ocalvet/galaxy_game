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
    Paint paint = Paint();
    paint.color = Color(0xFF00FF00);
    Rect rect = Rect.fromLTWH(100, 200, 200, 400);
    canvas.drawRect(rect, paint);
    p.paint(canvas,
        new Offset(size.width - p.width - 10, size.height - p.height - 10));
    }
}
