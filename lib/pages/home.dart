import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: ListView(
        children: [
          Container(
            height: 20,
            width: 10,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
