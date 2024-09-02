import 'package:white_cloud/importer.dart';
part 'activity_page_model.freezed.dart';

@freezed
class ActivityPageModel with _$ActivityPageModel {
  factory ActivityPageModel({
    required ActivityType currentType,
  }) = _ActivityPageModel;
}
