import 'package:freezed_annotation/freezed_annotation.dart';
import 'airport.dart';

part 'mission.freezed.dart';
part 'mission.g.dart';

enum MissionCategory {
  cargo,
  charter,
  sightseeing,
  fighter,
  rescue,
  freelance,
  other;

  static MissionCategory fromCode(int? code) => switch (code) {
        0 => MissionCategory.cargo,
        1 => MissionCategory.charter,
        2 => MissionCategory.sightseeing,
        3 => MissionCategory.fighter,
        4 => MissionCategory.rescue,
        5 => MissionCategory.freelance,
        _ => MissionCategory.other,
      };
}

@freezed
abstract class CargoType with _$CargoType {
  const factory CargoType({@JsonKey(name: 'Name') String? name}) = _CargoType;
  factory CargoType.fromJson(Map<String, dynamic> json) =>
      _$CargoTypeFromJson(json);
}

@freezed
abstract class CargoLeg with _$CargoLeg {
  const factory CargoLeg({
    @JsonKey(name: 'Weight') @Default(0) double weight,
    @JsonKey(name: 'CargoType') CargoType? cargoType,
    @JsonKey(name: 'DepartureAirport') Airport? departureAirport,
    @JsonKey(name: 'DestinationAirport') Airport? destinationAirport,
    @JsonKey(name: 'Distance') @Default(0) double distance,
  }) = _CargoLeg;
  factory CargoLeg.fromJson(Map<String, dynamic> json) =>
      _$CargoLegFromJson(json);
}

@freezed
abstract class CharterLeg with _$CharterLeg {
  const factory CharterLeg({
    @JsonKey(name: 'PassengersNumber') @Default(0) int passengersNumber,
    @JsonKey(name: 'DepartureAirport') Airport? departureAirport,
    @JsonKey(name: 'DestinationAirport') Airport? destinationAirport,
    @JsonKey(name: 'Distance') @Default(0) double distance,
  }) = _CharterLeg;
  factory CharterLeg.fromJson(Map<String, dynamic> json) =>
      _$CharterLegFromJson(json);
}

@freezed
abstract class Mission with _$Mission {
  const Mission._();
  const factory Mission({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Category') @Default(0) int categoryCode,
    @JsonKey(name: 'State') @Default(0) int state,
    @JsonKey(name: 'Description') @Default('') String description,
    @JsonKey(name: 'MainAirport') Airport? mainAirport,
    @JsonKey(name: 'CompletionDate') DateTime? completionDate,
    @JsonKey(name: 'TotalCargoTransported') @Default(0) double totalCargoTransported,
    @JsonKey(name: 'TotalPaxTransported') @Default(0) double totalPaxTransported,
    @JsonKey(name: 'Pay') @Default(0) double pay,
    @JsonKey(name: 'RealPay') @Default(0) double realPay,
    @JsonKey(name: 'PayLastMinuteBonus') @Default(0) double payLastMinuteBonus,
    @JsonKey(name: 'PayCompanyBonus') @Default(0) double payCompanyBonus,
    @JsonKey(name: 'Penality') @Default(0) double penality,
    @JsonKey(name: 'ReputationImpact') @Default(0) double reputationImpact,
    @JsonKey(name: 'XP') @Default(0) int xp,
    @JsonKey(name: 'ExpirationDate') DateTime? expirationDate,
    @JsonKey(name: 'TotalDistance') @Default(0) double totalDistance,
    @JsonKey(name: 'Cargos') @Default([]) List<CargoLeg> cargos,
    @JsonKey(name: 'Charters') @Default([]) List<CharterLeg> charters,
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) => _$MissionFromJson(json);

  MissionCategory get category => MissionCategory.fromCode(categoryCode);
  double get effectivePay => realPay > 0 ? realPay : pay;
}
