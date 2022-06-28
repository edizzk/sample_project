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

  void addCertificate(Certificate certificate) {
    certificates.add(certificate);
  }

  void deleteCertificate(String certificateName) {
    for (int i=0; i<certificates.length;i++) {
      if (certificateName == certificates[i].name) {
        certificates.removeAt(i);
      }
    }
  }

}