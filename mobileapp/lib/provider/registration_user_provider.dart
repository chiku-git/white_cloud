import 'package:white_cloud/importer.dart';

final registerUserProvider =
  StateNotifierProvider.autoDispose<RegisterUserState, User>((ref) =>
      RegisterUserState()
  );

class RegisterUserState extends StateNotifier<User> {
  RegisterUserState(): super(User());

  update({
    String? name,
    String? note,
    Uint8List? photo,
    DateTime? birthday,
    String? residence
  }) {
    state = state.copyWith(
        name: name,
        note: note,
        photo: photo,
        birthday: birthday,
        residence: residence
    );
  }
}