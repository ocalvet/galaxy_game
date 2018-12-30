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
    Rect r1 = Rect.fromLTWH(100, 200, 40, 15);
    Rect r2 = Rect.fromLTWH(200, 200, 40, 15);
    Rect r3 = Rect.fromLTWH(140, 250, 60, 15);
    canvas.drawArc(r3, 0.0, 3.14, false, paint);
    canvas.drawRect(r1, paint);
    canvas.drawRect(r2, paint);
    p.paint(canvas,
        new Offset(size.width - p.width - 10, size.height - p.height - 10));
    }
}
