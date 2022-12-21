// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mini_app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiniAppModel _$MiniAppModelFromJson(Map<String, dynamic> json) {
  return _MiniAppModel.fromJson(json);
}

/// @nodoc
class _$MiniAppModelTearOff {
  const _$MiniAppModelTearOff();

  _MiniAppModel call(
      {required MiniAppConfigsModel configs,
      required List<String> pageContents}) {
    return _MiniAppModel(
      configs: configs,
      pageContents: pageContents,
    );
  }

  MiniAppModel fromJson(Map<String, Object> json) {
    return MiniAppModel.fromJson(json);
  }
}

/// @nodoc
const $MiniAppModel = _$MiniAppModelTearOff();

/// @nodoc
mixin _$MiniAppModel {
  MiniAppConfigsModel get configs => throw _privateConstructorUsedError;
  List<String> get pageContents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniAppModelCopyWith<MiniAppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniAppModelCopyWith<$Res> {
  factory $MiniAppModelCopyWith(
          MiniAppModel value, $Res Function(MiniAppModel) then) =
      _$MiniAppModelCopyWithImpl<$Res>;
  $Res call({MiniAppConfigsModel configs, List<String> pageContents});

  $MiniAppConfigsModelCopyWith<$Res> get configs;
}

/// @nodoc
class _$MiniAppModelCopyWithImpl<$Res> implements $MiniAppModelCopyWith<$Res> {
  _$MiniAppModelCopyWithImpl(this._value, this._then);

  final MiniAppModel _value;
  // ignore: unused_field
  final $Res Function(MiniAppModel) _then;

  @override
  $Res call({
    Object? configs = freezed,
    Object? pageContents = freezed,
  }) {
    return _then(_value.copyWith(
      configs: configs == freezed
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as MiniAppConfigsModel,
      pageContents: pageContents == freezed
          ? _value.pageContents
          : pageContents // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $MiniAppConfigsModelCopyWith<$Res> get configs {
    return $MiniAppConfigsModelCopyWith<$Res>(_value.configs, (value) {
      return _then(_value.copyWith(configs: value));
    });
  }
}

/// @nodoc
abstract class _$MiniAppModelCopyWith<$Res>
    implements $MiniAppModelCopyWith<$Res> {
  factory _$MiniAppModelCopyWith(
          _MiniAppModel value, $Res Function(_MiniAppModel) then) =
      __$MiniAppModelCopyWithImpl<$Res>;
  @override
  $Res call({MiniAppConfigsModel configs, List<String> pageContents});

  @override
  $MiniAppConfigsModelCopyWith<$Res> get configs;
}

/// @nodoc
class __$MiniAppModelCopyWithImpl<$Res> extends _$MiniAppModelCopyWithImpl<$Res>
    implements _$MiniAppModelCopyWith<$Res> {
  __$MiniAppModelCopyWithImpl(
      _MiniAppModel _value, $Res Function(_MiniAppModel) _then)
      : super(_value, (v) => _then(v as _MiniAppModel));

  @override
  _MiniAppModel get _value => super._value as _MiniAppModel;

  @override
  $Res call({
    Object? configs = freezed,
    Object? pageContents = freezed,
  }) {
    return _then(_MiniAppModel(
      configs: configs == freezed
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as MiniAppConfigsModel,
      pageContents: pageContents == freezed
          ? _value.pageContents
          : pageContents // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiniAppModel extends _MiniAppModel {
  const _$_MiniAppModel({required this.configs, required this.pageContents})
      : super._();

  factory _$_MiniAppModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MiniAppModelFromJson(json);

  @override
  final MiniAppConfigsModel configs;
  @override
  final List<String> pageContents;

  @override
  String toString() {
    return 'MiniAppModel(configs: $configs, pageContents: $pageContents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MiniAppModel &&
            (identical(other.configs, configs) ||
                const DeepCollectionEquality()
                    .equals(other.configs, configs)) &&
            (identical(other.pageContents, pageContents) ||
                const DeepCollectionEquality()
                    .equals(other.pageContents, pageContents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(configs) ^
      const DeepCollectionEquality().hash(pageContents);

  @JsonKey(ignore: true)
  @override
  _$MiniAppModelCopyWith<_MiniAppModel> get copyWith =>
      __$MiniAppModelCopyWithImpl<_MiniAppModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MiniAppModelToJson(this);
  }
}

abstract class _MiniAppModel extends MiniAppModel {
  const factory _MiniAppModel(
      {required MiniAppConfigsModel configs,
      required List<String> pageContents}) = _$_MiniAppModel;
  const _MiniAppModel._() : super._();

  factory _MiniAppModel.fromJson(Map<String, dynamic> json) =
      _$_MiniAppModel.fromJson;

  @override
  MiniAppConfigsModel get configs => throw _privateConstructorUsedError;
  @override
  List<String> get pageContents => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MiniAppModelCopyWith<_MiniAppModel> get copyWith =>
      throw _privateConstructorUsedError;
}
