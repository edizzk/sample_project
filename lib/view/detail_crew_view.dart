import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../core/dialogs.dart';
import '../model/crew_model.dart';

class DetailCrewView extends StatelessWidget {
  const DetailCrewView({Key? key, required this.crew}) : super(key: key);

  final Crew crew;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('project_title'.tr)),
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: Text("first_name".tr),
              trailing: Text(crew.firstName),
            ),
            ListTile(
              leading: const Icon(Icons.perm_contact_cal_outlined),
              title: Text("last_name".tr),
              trailing: Text(crew.lastName),
            ),
            ListTile(
              leading: const Icon(Icons.accessibility_new_sharp),
              title: Text("nationality".tr),
              trailing: Text(crew.nationality),
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: Text("crew_title".tr),
              trailing: Text(crew.title),
            ),
            ExpansionTile(
              leading: const Icon(Icons.add_card_sharp),
              title: Text("certificates".tr),
              trailing: const Icon(Icons.arrow_drop_down),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: crew.certificates.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(crew.certificates[index].name),
                        trailing: Text(crew.certificates[index].date),
                      );
                    }
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 20),
                  child: IconButton(
                    onPressed: () {
                      Dialogs.certificates = crew.certificates;
                      Navigator.of(context).restorablePush(Dialogs.editCrewPopup);
                    },
                    icon: const Icon(Icons.edit)))
              ],
            )
          ],
        ),
      ),
    );
  }

}