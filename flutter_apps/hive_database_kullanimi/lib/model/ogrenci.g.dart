// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogrenci.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OgrenciAdapter extends TypeAdapter<Ogrenci> {
  @override
  final int typeId = 1;

  @override
  Ogrenci read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ogrenci(
      fields[0] as int,
      fields[1] as String,
      fields[2] as GozRengi,
    );
  }

  @override
  void write(BinaryWriter writer, Ogrenci obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isim)
      ..writeByte(2)
      ..write(obj.gozRengi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OgrenciAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GozRengiAdapter extends TypeAdapter<GozRengi> {
  @override
  final int typeId = 2;

  @override
  GozRengi read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GozRengi.SIYAH;
      case 1:
        return GozRengi.MAVI;
      case 2:
        return GozRengi.YESIL;
      default:
        return GozRengi.SIYAH;
    }
  }

  @override
  void write(BinaryWriter writer, GozRengi obj) {
    switch (obj) {
      case GozRengi.SIYAH:
        writer.writeByte(0);
        break;
      case GozRengi.MAVI:
        writer.writeByte(1);
        break;
      case GozRengi.YESIL:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GozRengiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
