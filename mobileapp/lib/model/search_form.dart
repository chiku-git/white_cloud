import 'package:white_cloud/importer.dart';

part 'search_form.freezed.dart';

@freezed
abstract class SearchForm implements _$SearchForm {
  SearchForm._();
  factory SearchForm({
    required String keyword,
    required int page,
  }) = _SearchForm;
}