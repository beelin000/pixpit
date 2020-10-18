import 'package:flutter/material.dart';
import 'package:pixpit_app/config/palette.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'pixpit',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.2,
                ),
            ),
            centerTitle: false,
            floating: true,
          ),
          
        ],
      ),
    );
  }
}