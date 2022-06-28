import 'package:flutter/material.dart';

import '../controllers/crew_controller.dart';
import '../widget/crew_card_widget.dart';
import '../widget/drawer_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'detail_crew_view.dart';

class CrewView extends StatelessWidget {
  CrewView({Key? key, required this.title}) : super(key: key);

  final String title;
  final CrewModelController crewModelController = Get.put(CrewModelController());

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
        body: TabBarView(
          children: [
            Obx(() => ListView.builder(
                itemCount: crewModelController.crewList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCrewView(crew: crewModelController.crewList[index])));
                    },
                    child: buildCard(index, crewModelController.crewList[index]),
                  );
                },
              ),
            ),
            const Center(child: Text("MARINE")),
          ],
        ),
      ),
    );
  }
}