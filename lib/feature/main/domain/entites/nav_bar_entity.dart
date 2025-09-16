import 'package:doctors_app/core/util/app_images.dart';

class NavBarEntity {
  final String image;
  final String name;

  NavBarEntity({required this.image, required this.name});
}

List<NavBarEntity> navBarList = [
  NavBarEntity(image: Assets.imagesHome, name: "Home"),
  NavBarEntity(image: Assets.imagesBookings, name: "Bookings"),
  NavBarEntity(image: Assets.imagesChat, name: "Chat"),
  NavBarEntity(image: Assets.imagesProfile, name: "Profile"),
];
