// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../model/certificate_model.dart';
import '../model/crew_model.dart';

class CrewModelController extends GetxController {
  var crewList = <Crew>[].obs;

  @override
  void onInit() {
    _fillDatas();
    super.onInit();
  }

  void _fillDatas (){
    final Crew crew1 = Crew(firstName: 'Name1', lastName: 'LastName1', nationality: 'Turkish', title: 'Captain');
    final Crew crew2 = Crew(firstName: 'Name2', lastName: 'LastName2', nationality: 'English', title: 'Cook');
    final Crew crew3 = Crew(firstName: 'Name3', lastName: 'LastName3', nationality: 'Mexican', title: 'Engineer');
    final Crew crew4 = Crew(firstName: 'Name4', lastName: 'LastName4', nationality: 'English', title: 'Engineer');
    final Crew crew5 = Crew(firstName: 'Name5', lastName: 'LastName5', nationality: 'Spanish', title: 'Cook');
    final Crew crew6 = Crew(firstName: 'Name6', lastName: 'LastName6', nationality: 'Mexican', title: 'Engineer');
    final Crew crew7 = Crew(firstName: 'Name7', lastName: 'LastName7', nationality: 'American', title: 'NewJob1');
    final Crew crew8 = Crew(firstName: 'Name8', lastName: 'LastName8', nationality: 'American', title: 'Engineer');
    final Crew crew9 = Crew(firstName: 'Name9', lastName: 'LastName9', nationality: 'Spanish', title: 'NewJob2');
    final Crew crew10 = Crew(firstName: 'Name10', lastName: 'LastName10', nationality: 'Italian', title: 'NewJob3');
    final Certificate certificate1 = Certificate(name: "A Sertificate", date: "Date 1");
    final Certificate certificate2 = Certificate(name: "B Sertificate", date: "Date 2");
    final Certificate certificate3 = Certificate(name: "C Sertificate", date: "Date 3");
    final Certificate certificate4 = Certificate(name: "D Sertificate", date: "Date 4");
    final Certificate certificate5 = Certificate(name: "E Sertificate", date: "Date 5");

    crew1.addCertificate(certificate1);
    crew1.addCertificate(certificate3);
    crew1.addCertificate(certificate5);
    crewList.add(crew1);
    crew2.addCertificate(certificate5);
    crew2.addCertificate(certificate2);
    crewList.add(crew2);
    crew3.addCertificate(certificate2);
    crew3.addCertificate(certificate1);
    crew3.addCertificate(certificate3);
    crew3.addCertificate(certificate4);
    crew3.addCertificate(certificate5);
    crewList.add(crew3);
    crew4.addCertificate(certificate2);
    crewList.add(crew4);
    crew5.addCertificate(certificate3);
    crewList.add(crew5);
    crew6.addCertificate(certificate1);
    crew6.addCertificate(certificate2);
    crewList.add(crew6);
    crew7.addCertificate(certificate3);
    crewList.add(crew7);
    crew8.addCertificate(certificate3);
    crew8.addCertificate(certificate5);
    crewList.add(crew8);
    crew9.addCertificate(certificate4);
    crew9.addCertificate(certificate5);
    crew9.addCertificate(certificate1);
    crewList.add(crew9);
    crew10.addCertificate(certificate2);
    crewList.add(crew10);
  }

}