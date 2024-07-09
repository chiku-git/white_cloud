import 'package:white_cloud/importer.dart';

final postFormProvider = StateNotifierProvider
    .autoDispose<PostFormNotifier, PostForm>(
        (ref) => throw UnimplementedError());

class PostFormNotifier extends StateNotifier<PostForm> {
  PostFormNotifier(super.form);

  update({required String? body}) {
    state = state.copyWith(
      body: body ?? state.body
    );
  }
}