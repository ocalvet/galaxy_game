import 'package:flame/components/component.dart';

const SPEED = 100;
const ROTATION_SPEED =0.9;

class SpaceShip extends SpriteComponent {

  SpaceShip() : super.square(128.0, 'space_ship.png') {
    x = 200;
    y = 100;
    angle = 0.0;
  }

  @override
  void update(double t) {
    y > 1000 ? y = -128 : y += t * SPEED;
    angle += t * ROTATION_SPEED;
  }
}
