import 'package:white_cloud/importer.dart';
import 'package:white_cloud/model/photo_data.dart';

class User {
  final String name;
  final String note;
  final DateTime? birthday;
  final String residence;
  final PhotoData? photo;

  User({
    this.name = "",
    this.note = "",
    this.birthday,
    this.residence = "",
    this.photo
  });

  bool get isValid => name.isNotEmpty;

  User copyWith({
    String? name,
    String? note,
    Uint8List? photo,
    DateTime? birthday,
    String? residence}) => User(
    name: name ?? this.name,
    note: note ?? this.note,
    photo: photo != null ? PhotoData(photo) : this.photo,
    birthday: birthday ?? this.birthday,
    residence: residence ?? this.residence
  );

  @override
  String toString() {
    return 'User{'
        'name: $name, '
        'note: $note, '
        'birthday: $birthday, '
        'residence: $residence, '
        'photo: $photo}'
    ;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          note == other.note &&
          birthday == other.birthday &&
          residence == other.residence &&
          photo == other.photo;

  @override
  int get hashCode =>
      name.hashCode ^
      note.hashCode ^
      birthday.hashCode ^
      residence.hashCode ^
      photo.hashCode;
}