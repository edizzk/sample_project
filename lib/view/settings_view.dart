import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../core/dialogs.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('project_title'.tr)),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text("change_language".tr),
            onTap: () {
              Navigator.of(context).restorablePush(Dialogs.settingsDialog);
            },
          )
        ],
      ),
    );
  }
}