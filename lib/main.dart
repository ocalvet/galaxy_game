import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:galaxy_game/galaxy_game.dart';
import 'package:flutter/material.dart' show runApp;

void main() async {
  Flame.util.enableEvents();
  Flame.audio.disableLog();
  var game = GalaxyGame();
  Size dimensions = await Flame.util.initialDimensions();
  print('Game created $dimensions');
  runApp(game.widget);
  window.onPointerDataPacket = (packet) {
    var pointer = packet.data.first;
    game.input(
      pointer.physicalX / window.devicePixelRatio,
      pointer.physicalY / window.devicePixelRatio,
    );
  };
}
