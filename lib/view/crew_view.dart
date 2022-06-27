import 'package:flutter/material.dart';

class CrewView extends StatelessWidget {
  const CrewView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(),
      );
  }
}