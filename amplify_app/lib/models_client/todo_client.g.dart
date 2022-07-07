// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoClient _$$_TodoClientFromJson(Map json) => _$_TodoClient(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      status: $enumDecode(_$TodoStatusEnumMap, json['status']),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TodoClientToJson(_$_TodoClient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': _$TodoStatusEnumMap[instance.status],
      'deadline': instance.deadline?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$TodoStatusEnumMap = {
  TodoStatus.waiting: 'waiting',
  TodoStatus.inProgress: 'inProgress',
  TodoStatus.done: 'done',
  TodoStatus.archived: 'archived',
};
