import 'package:flutter/material.dart';
import 'package:galaxy_game/home_page.dart';

class GalaxyGameApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galaxy Game',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
