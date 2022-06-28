import 'certificate_model.dart';

class Crew {
  String firstName;
  String lastName;
  String nationality;
  String title;
  List<Certificate> certificates;

  Crew({
    required this.firstName,
    required this.lastName,
    required this.nationality,
    required this.title,
  }) : certificates = [];

}