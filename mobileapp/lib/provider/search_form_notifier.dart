import 'package:white_cloud/importer.dart';

final searchFormProvider = StateNotifierProvider<SearchFormNotifier, SearchForm>(
        (ref) => throw UnimplementedError());

class SearchFormNotifier extends StateNotifier<SearchForm> {
  SearchFormNotifier(super.form);
  int page = 0;

  update({String? keyword}) {
    state = state.copyWith(
      keyword: keyword ?? state.keyword,
      page: state.page,
    );
  }

  nextPage({required int page}) {
    if (this.page != page) {
      this.page = page;
      state = state.copyWith(
          keyword: state.keyword,
          page: state.page + 1,
      );
    }
  }
}