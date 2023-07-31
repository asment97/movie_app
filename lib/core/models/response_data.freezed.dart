// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  Dates? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  dynamic get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      dynamic results,
      int? totalPages,
      int? totalResults});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseDataCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$_ResponseDataCopyWith(
          _$_ResponseData value, $Res Function(_$_ResponseData) then) =
      __$$_ResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      dynamic results,
      int? totalPages,
      int? totalResults});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$_ResponseDataCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$_ResponseData>
    implements _$$_ResponseDataCopyWith<$Res> {
  __$$_ResponseDataCopyWithImpl(
      _$_ResponseData _value, $Res Function(_$_ResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_ResponseData(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ResponseData implements _ResponseData {
  const _$_ResponseData(
      {this.dates,
      this.page,
      this.results,
      this.totalPages,
      this.totalResults});

  factory _$_ResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDataFromJson(json);

  @override
  final Dates? dates;
  @override
  final int? page;
  @override
  final dynamic results;
  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'ResponseData(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseData &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      __$$_ResponseDataCopyWithImpl<_$_ResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDataToJson(
      this,
    );
  }
}

abstract class _ResponseData implements ResponseData {
  const factory _ResponseData(
      {final Dates? dates,
      final int? page,
      final dynamic results,
      final int? totalPages,
      final int? totalResults}) = _$_ResponseData;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$_ResponseData.fromJson;

  @override
  Dates? get dates;
  @override
  int? get page;
  @override
  dynamic get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
