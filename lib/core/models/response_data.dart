import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/models/dates.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ResponseData({
    Dates? dates,
    int? page,
    dynamic results,
    int? totalPages,
    int? totalResults,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, Object?> json) =>
      _$ResponseDataFromJson(json);
}
