import 'package:dart_exporter_annotation/dart_exporter_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_app/src/features/configs/domain/models/mini_app_configs.dart';

part 'mini_app_model.freezed.dart';
part 'mini_app_model.g.dart';

@freezed
@Export()

///[MiniAppModel]
class MiniAppModel with _$MiniAppModel {
  ///[MiniAppModel]
  const factory MiniAppModel({
    required MiniAppConfigsModel configs,
    required List<String> pageContents,
  }) = _MiniAppModel;

  ///[fromJson]
  factory MiniAppModel.fromJson(Map<String, dynamic> json) =>
      _$MiniAppModelFromJson(json);
  const MiniAppModel._();
}
