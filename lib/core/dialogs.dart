import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sample_project/model/certificate_model.dart';

import '../controllers/lang_controller.dart';
import 'language.dart';

class Dialogs {

  static final LanguageController languageController = Get.put(LanguageController(Language.en));

  static Route<Object?> settingsDialog(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
      AlertDialog(
        title: Text('choose_language'.tr),
        contentPadding: const EdgeInsets.all(32.0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => ListTile(
              leading: Radio<Language>(value: Language.en, groupValue: languageController.lang.value, onChanged: (value) {}),
              title: Text("english".tr),
              onTap: () {
                Get.updateLocale(const Locale('en', 'US'));
                languageController.lang(Language.en);
              },
            )),
            Obx(() => ListTile(
              leading: Radio<Language>(value: Language.tr, groupValue: languageController.lang.value, onChanged: (value) {}),
              title: Text("turkish".tr),
              onTap: () {
                Get.updateLocale(const Locale('tr', 'TR'));
                languageController.lang(Language.tr);
              },
            )),
          ],
        ),
        actions: [
          elevatedButton(context),
        ],
      ),
    );
  }

  static List<Certificate> certificates = [];

  static Route<Object?> editCrewPopup(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(
            title: Text('certificate_list'.tr),
            contentPadding: const EdgeInsets.all(16.0),
            content: SizedBox(
              height: 200,
              width: 100,
              child: ListView.builder(
                itemCount: certificates.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(certificates[index].name),
                      trailing: Text(certificates[index].date),
                    ),
                  );
                },
              ),
            ),
            actions: [
              elevatedButton(context),
            ],
          ),
    );
  }

  static Widget elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () { Navigator.pop(context); },
      child: Text("ok".tr),
    );
  }
}