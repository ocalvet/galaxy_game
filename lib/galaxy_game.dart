import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' show TextPainter, Colors;
import 'package:galaxy_game/space_ship.dart';

const SPEED = 100;

class GalaxyGame extends BaseGame {
  SpaceShip ship;
  GalaxyGame() {
    this.ship = SpaceShip();
  }

  @override
  void render(Canvas canvas) {
    canvas.save();
    if (ship != null) {
      ship.render(canvas);
      canvas.restore();
      canvas.save();
    }
    String text = 'Galaxy Game';
    TextPainter textPainter =
        Flame.util.text(text, color: Colors.white, fontSize: 48.0);
    Paint paint = Paint();
    paint.color = Color(0xFF00FF00);
    double centerW = size.width / 2;
    double centerH = size.height / 2;
    Rect r1 = Rect.fromLTWH(centerW - 70, 275, 40, 15);
    Rect r2 = Rect.fromLTWH(centerW + 30, 275, 40, 15);
    Rect r3 = Rect.fromLTWH(centerW - 30, 325, 60, 15);
    canvas.drawArc(r3, 0.0, 3.14, false, paint);
    canvas.drawRect(r1, paint);
    canvas.drawRect(r2, paint);
    textPainter.paint(
      canvas,
      new Offset(
        centerW - textPainter.width / 2,
        centerH - textPainter.height / 2,
      ),
    );
    // Render the ship
  }

  @override
  void update(double t) {
    // print(t);
    if (ship != null) ship.update(t);
    // super.update(t);
  }

  void input(double x, double y) {
    // Delete the ship on a screen click
    if (ship != null) {
      print('$x, $y | ${ship.x}, ${ship.y}');
      double dx = (ship.x - x).abs();
      double dy = (ship.y - y).abs();
      var diff = 64;
      var remove = (dx < diff && dy < diff);
      if (remove) {
        ship = null;
      }
    }
    // if (ship != null) {
    //   ship = null;
    // }
  }
}
