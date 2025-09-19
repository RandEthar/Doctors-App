import 'package:doctors_app/core/util/app_images.dart';

class CategoriesEntity {
  final String image;
  final String name;

  CategoriesEntity({required this.image, required this.name});
}

List<String> specializations = [
  "Cardiology",       // 1
  "Dermatology",      // 2
  "Neurology",        // 3
  "Orthopedics",      // 4
  "Pediatrics",       // 5
  "Gynecology", 
   "Ophthalmology"       // 6
  "Urology",         
  "Gastroenterology", // 8
  "Psychiatry"        // 9
];