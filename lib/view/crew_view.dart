import 'package:flutter/material.dart';

import '../widget/drawer_widget.dart';

class CrewView extends StatelessWidget {
  const CrewView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Crew"),
              Tab(text: "Marine")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("CREW")),
            Center(child: Text("MARINE")),
          ],
        ),
      ),
    );
  }
}