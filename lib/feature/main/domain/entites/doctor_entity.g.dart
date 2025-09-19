// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoctorEntityAdapter extends TypeAdapter<DoctorEntity> {
  @override
  final int typeId = 0;

  @override
  DoctorEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoctorEntity(
      id: fields[0] as int?,
      name: fields[1] as String?,
      specialty: fields[2] as String?,
      imageUrl: fields[3] as String?,
      startTime: fields[4] as String?,
      endTime: fields[5] as String?,
      specialtyId: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, DoctorEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.specialty)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.startTime)
      ..writeByte(5)
      ..write(obj.endTime)
      ..writeByte(6)
      ..write(obj.specialtyId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
