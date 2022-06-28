import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../model/crew_model.dart';

Card buildCard(int index, Crew crew) {
  return Card(
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          ListTile(title: Text("${"first_name".tr}: "), trailing: Text(crew.firstName)),
          ListTile(title: Text("${"last_name".tr}: "), trailing: Text(crew.lastName)),
          ListTile(title: Text("${"nationality".tr}: "), trailing: Text(crew.nationality)),
          ListTile(title: Text("${"crew_title".tr}: "), trailing: Text(crew.title)),
        ],
      ),
    ),
  );
}