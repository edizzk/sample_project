import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';


class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          buildDrawerMenuItems(context),
        ],
      ),
    );
  }

  DrawerHeader buildDrawerHeader() {
    return DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "project_title".tr,
                style: const TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ],
          ),
        );
  }

  Column buildDrawerMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(leading: const Icon(Icons.adb), title: Text("contracts_menu".tr)),
        ListTile(leading: const Icon(Icons.account_balance), title: Text("crm_menu".tr)),
        ListTile(leading: const Icon(Icons.add_alert_rounded), title: Text("vessel_menu".tr)),
        ListTile(
          leading: const Icon(Icons.people_alt),
          title: Text("crew_menu".tr),
          onTap: () {
            Navigator.pop(context);
            },
        ),
        ListTile(leading: const Icon(Icons.ad_units), title: Text("marine_menu".tr)),
        const Divider(color: Colors.black54),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text("settings_menu".tr),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/settings");
          },
        ),
      ],
    );
  }
}