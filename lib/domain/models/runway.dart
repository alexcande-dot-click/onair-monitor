import 'package:freezed_annotation/freezed_annotation.dart';

part 'runway.freezed.dart';
part 'runway.g.dart';

@freezed
abstract class Runway with _$Runway {
  const factory Runway({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'MagneticHeading') @Default(0) int magneticHeading,
    @JsonKey(name: 'Length') @Default(0) int length,
    @JsonKey(name: 'Width') @Default(0) int width,
    @JsonKey(name: 'HasIls') @Default(false) bool hasIls,
    @JsonKey(name: 'IlsFrequency') @Default(0) double ilsFrequency,
    @JsonKey(name: 'SurfaceType') @Default(0) int surfaceType,
    @JsonKey(name: 'ApproachLights') String? approachLights,
  }) = _Runway;

  factory Runway.fromJson(Map<String, dynamic> json) => _$RunwayFromJson(json);
}
