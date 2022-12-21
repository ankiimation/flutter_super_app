// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiniAppModel _$_$_MiniAppModelFromJson(Map<String, dynamic> json) {
  return _$_MiniAppModel(
    configs:
        MiniAppConfigsModel.fromJson(json['configs'] as Map<String, dynamic>),
    pageContents: (json['pageContents'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_MiniAppModelToJson(_$_MiniAppModel instance) =>
    <String, dynamic>{
      'configs': instance.configs,
      'pageContents': instance.pageContents,
    };
