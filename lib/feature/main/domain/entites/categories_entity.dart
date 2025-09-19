import 'package:doctors_app/core/util/app_images.dart';

class CategoriesEntity {
  final String image;
  final String name;

  CategoriesEntity({required this.image, required this.name});
}

// List<CategoriesEntity> categoriesList = [
//   CategoriesEntity(image: Assets.imagesCadiologist, name: "Heart"),
//   CategoriesEntity(image: Assets.imagesDentists, name: "Dental"),
//   CategoriesEntity(image: Assets.imagesNephrologists, name: "Kidney"),
//   CategoriesEntity(image: Assets.imagesGastroenterologists, name: "Stomach"),
//   CategoriesEntity(image: Assets.imagesPulmonologists, name: "Lung"),
//   CategoriesEntity(image: Assets.imagesNeurologists, name: "Brain"),
//   CategoriesEntity(image: Assets.imagesPsychiatrists, name: "Mental"),
//   CategoriesEntity(image: Assets.imagesHepatologists, name: "Liver"),
// ];
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