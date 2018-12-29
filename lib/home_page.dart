import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Text('Galaxy Game', style: Theme.of(context).textTheme.display1),
      ),
    );
  }
}
