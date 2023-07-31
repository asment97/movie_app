import 'package:freezed_annotation/freezed_annotation.dart';

part 'dates.freezed.dart';
part 'dates.g.dart';

@freezed
class Dates with _$Dates {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Dates({
    required String maximum,
    required String minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, Object?> json) => _$DatesFromJson(json);
}
