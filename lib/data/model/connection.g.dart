// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Connection _$$_ConnectionFromJson(Map<String, dynamic> json) =>
    _$_Connection(
      id: json['id'] as String? ?? 'temp',
      userId: json['userId'] as String? ?? 'temp',
      title: json['title'] as String,
      description: json['description'] as String,
      phoneNumber: json['phoneNumber'] as String,
      website: json['website'] as String,
    );

Map<String, dynamic> _$$_ConnectionToJson(_$_Connection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'phoneNumber': instance.phoneNumber,
      'website': instance.website,
    };
