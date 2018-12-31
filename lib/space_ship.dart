import 'package:flame/components/component.dart';

class SpaceShip extends SpriteComponent {
  SpaceShip() : super.square(128.0, 'space_ship.png') {
    this.angle = 0.0;
  }
}
