// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoClient _$TodoClientFromJson(Map<String, dynamic> json) {
  return _TodoClient.fromJson(json);
}

/// @nodoc
mixin _$TodoClient {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoClientCopyWith<TodoClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoClientCopyWith<$Res> {
  factory $TodoClientCopyWith(
          TodoClient value, $Res Function(TodoClient) then) =
      _$TodoClientCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String title,
      String description,
      TodoStatus status,
      DateTime? deadline,
      DateTime createdAt});
}

/// @nodoc
class _$TodoClientCopyWithImpl<$Res> implements $TodoClientCopyWith<$Res> {
  _$TodoClientCopyWithImpl(this._value, this._then);

  final TodoClient _value;
  // ignore: unused_field
  final $Res Function(TodoClient) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deadline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoClientCopyWith<$Res>
    implements $TodoClientCopyWith<$Res> {
  factory _$$_TodoClientCopyWith(
          _$_TodoClient value, $Res Function(_$_TodoClient) then) =
      __$$_TodoClientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String title,
      String description,
      TodoStatus status,
      DateTime? deadline,
      DateTime createdAt});
}

/// @nodoc
class __$$_TodoClientCopyWithImpl<$Res> extends _$TodoClientCopyWithImpl<$Res>
    implements _$$_TodoClientCopyWith<$Res> {
  __$$_TodoClientCopyWithImpl(
      _$_TodoClient _value, $Res Function(_$_TodoClient) _then)
      : super(_value, (v) => _then(v as _$_TodoClient));

  @override
  _$_TodoClient get _value => super._value as _$_TodoClient;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deadline = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TodoClient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoClient with DiagnosticableTreeMixin implements _TodoClient {
  const _$_TodoClient(
      {this.id,
      required this.title,
      this.description = '',
      required this.status,
      this.deadline,
      required this.createdAt});

  factory _$_TodoClient.fromJson(Map<String, dynamic> json) =>
      _$$_TodoClientFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final TodoStatus status;
  @override
  final DateTime? deadline;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoClient(id: $id, title: $title, description: $description, status: $status, deadline: $deadline, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoClient'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('deadline', deadline))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoClient &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_TodoClientCopyWith<_$_TodoClient> get copyWith =>
      __$$_TodoClientCopyWithImpl<_$_TodoClient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoClientToJson(this);
  }
}

abstract class _TodoClient implements TodoClient {
  const factory _TodoClient(
      {final String? id,
      required final String title,
      final String description,
      required final TodoStatus status,
      final DateTime? deadline,
      required final DateTime createdAt}) = _$_TodoClient;

  factory _TodoClient.fromJson(Map<String, dynamic> json) =
      _$_TodoClient.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  TodoStatus get status => throw _privateConstructorUsedError;
  @override
  DateTime? get deadline => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoClientCopyWith<_$_TodoClient> get copyWith =>
      throw _privateConstructorUsedError;
}
