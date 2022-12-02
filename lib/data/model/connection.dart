import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'connection.freezed.dart';
part 'connection.g.dart';

@freezed
class Connection with _$Connection {
  const factory Connection({
    @Default('temp')String id,
    @Default('temp') String userId,
    required String title,
    required String description,
    required String phoneNumber,
    required String website,
  }) = _Connection;

  factory Connection.fromJson(Map<String, Object?> json) => _$ConnectionFromJson(json);
}
