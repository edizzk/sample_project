import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'language.dart';

class Dialogs {

  static Language lang = Language.tr;

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
            ListTile(
              leading: Radio<Language>(value: Language.en, groupValue: lang, onChanged: onChanged),
              title: Text("english".tr),
            ),
            ListTile(
              leading: Radio<Language>(value: Language.tr, groupValue: lang, onChanged: onChanged),
              title: Text("turkish".tr),
            ),
          ],
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

  static void onChanged(Language? value) {
    if (value==Language.en) {
      debugPrint("US SEÇİLDİİİİ");
      lang = Language.tr;
    }
    if (value==Language.tr) {
      debugPrint("TR SEÇİLDİİİİ");
      lang = Language.en;
    }


  }


}