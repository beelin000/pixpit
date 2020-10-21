import 'package:flutter/material.dart';
import 'package:pixpit_app/config/palette.dart';

class PostDetailsScreen extends StatelessWidget {
  static const String tag = "post_details_screen";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'pixpit',
          style: const TextStyle(
            color: Palette.facebookBlue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.2,
            ),
        ),
      ),
    );
  }
}