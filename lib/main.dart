import 'package:flame/flame.dart';
import 'package:galaxy_game/galaxy_game.dart';
import 'package:flutter/material.dart' show runApp;

void main() {
  Flame.util.enableEvents();
  Flame.audio.disableLog();
  var game = GalaxyGame();
  runApp(game.widget);
}
