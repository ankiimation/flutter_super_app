// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_app_configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiniAppConfigsModel _$_$_MiniAppConfigsModelFromJson(
    Map<String, dynamic> json) {
  return _$_MiniAppConfigsModel(
    appId: json['appId'] as String,
    appName: json['appName'] as String,
    appDescription: json['appDescription'] as String,
    pageRoutes:
        (json['pageRoutes'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_MiniAppConfigsModelToJson(
        _$_MiniAppConfigsModel instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'appName': instance.appName,
      'appDescription': instance.appDescription,
      'pageRoutes': instance.pageRoutes,
    };
