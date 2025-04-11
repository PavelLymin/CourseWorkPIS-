// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
          DepartmentModel value, $Res Function(DepartmentModel) then) =
      _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call({int? id, String title});
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentModelImplCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$DepartmentModelImplCopyWith(_$DepartmentModelImpl value,
          $Res Function(_$DepartmentModelImpl) then) =
      __$$DepartmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title});
}

/// @nodoc
class __$$DepartmentModelImplCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$DepartmentModelImpl>
    implements _$$DepartmentModelImplCopyWith<$Res> {
  __$$DepartmentModelImplCopyWithImpl(
      _$DepartmentModelImpl _value, $Res Function(_$DepartmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
  }) {
    return _then(_$DepartmentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepartmentModelImpl implements _DepartmentModel {
  const _$DepartmentModelImpl({this.id, required this.title});

  @override
  final int? id;
  @override
  final String title;

  @override
  String toString() {
    return 'DepartmentModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      __$$DepartmentModelImplCopyWithImpl<_$DepartmentModelImpl>(
          this, _$identity);
}

abstract class _DepartmentModel implements DepartmentModel {
  const factory _DepartmentModel({final int? id, required final String title}) =
      _$DepartmentModelImpl;

  @override
  int? get id;
  @override
  String get title;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
