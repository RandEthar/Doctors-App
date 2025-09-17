import 'package:hive/hive.dart';
part 'doctor_entity.g.dart';

@HiveType(typeId: 0)
class DoctorEntity {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? specialty;
  @HiveField(3)
  final String? imageUrl;
  @HiveField(4)
  final String? startTime;
  @HiveField(5)
  final String? endTime;

  DoctorEntity(
      {required this.id,
      required this.name,
      required this.specialty,
      required this.imageUrl,
      required this.startTime,
      required this.endTime});
}
