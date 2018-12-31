import 'package:flame/components/component.dart';

class SpaceShip extends SpriteComponent {
  SpaceShip() : super.square(128.0, 'space_ship.png') {
    x = 200;
    y = 100;
    this.angle = 0.0;
  }
  @override
  void update(double t) {
    y += t * 100;
    // print(y);
  }
}
