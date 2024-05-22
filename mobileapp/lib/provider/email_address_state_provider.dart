import 'package:white_cloud/importer.dart';

final emailAddressStateProvider =
  StateNotifierProvider.autoDispose<EmailAddressStateNotifier, EmailAddressState>(
          (ref) => EmailAddressStateNotifier()
  );

class EmailAddressStateNotifier extends StateNotifier<EmailAddressState> {
  EmailAddressStateNotifier(): super(EmailAddressState.empty);

  update(EmailAddressState newState) => state = newState;
}