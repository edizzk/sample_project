// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sample_project/core/language.dart';

class LanguageController extends GetxController {
  Rx<Language> lang;

  LanguageController(Language language) : lang = Rx<Language>(language);
}