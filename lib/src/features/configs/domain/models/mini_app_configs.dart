import 'package:dart_exporter_annotation/dart_exporter_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mini_app_configs.freezed.dart';
part 'mini_app_configs.g.dart';

@freezed
@Export()

///[MiniAppConfigsModel]
class MiniAppConfigsModel with _$MiniAppConfigsModel {
  ///[MiniAppConfigsModel]
  const factory MiniAppConfigsModel({
    required String appId,
    required String appName,
    required String appDescription,
    required List<String> pageRoutes,
  }) = _MiniAppConfigsModel;

  ///[fromJson]
  factory MiniAppConfigsModel.fromJson(Map<String, dynamic> json) =>
      _$MiniAppConfigsModelFromJson(json);
  const MiniAppConfigsModel._();

  String get initialRoute => getRouteName(pageRoutes.first);

  String getRouteName(String pageRoute) {
    return '$appId#$pageRoute';
  }
}
