import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/json/utc.dart';
import 'aircraft_type.dart'; // AircraftClass
import 'airport.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

enum CrewCategory {
  pilot,
  cabinCrew,
  mechanic,
  other;

  static CrewCategory fromCode(int? code) => switch (code) {
        1 => CrewCategory.pilot,
        2 => CrewCategory.cabinCrew,
        3 => CrewCategory.mechanic,
        _ => CrewCategory.other,
      };

  bool get isAssignable =>
      this == CrewCategory.pilot || this == CrewCategory.cabinCrew;
}

@freezed
abstract class ClassCertification with _$ClassCertification {
  const factory ClassCertification({
    @JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass,
  }) = _ClassCertification;

  factory ClassCertification.fromJson(Map<String, dynamic> json) =>
      _$ClassCertificationFromJson(json);
}

@freezed
abstract class Employee with _$Employee {
  const Employee._();
  const factory Employee({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Pseudo') @Default('') String pseudo,
    @JsonKey(name: 'Category') @Default(0) int categoryCode,
    @JsonKey(name: 'Status') @Default(0) int statusCode,
    @JsonKey(name: 'ClassCertifications')
    @Default([]) List<ClassCertification> classCertifications,
    @JsonKey(name: 'Fatigue') @Default(0) double fatigue,
    @JsonKey(name: 'Punctuality') @Default(0) double punctuality,
    @JsonKey(name: 'Comfort') @Default(0) double comfort,
    @JsonKey(name: 'Happiness') @Default(0) double happiness,
    @JsonKey(name: 'FlightHoursInCompany') @Default(0) double flightHoursInCompany,
    @JsonKey(name: 'FlightHoursGrandTotal') @Default(0) double flightHoursGrandTotal,
    @JsonKey(name: 'PerFlightHourWages') @Default(0) double perFlightHourWages,
    @JsonKey(name: 'WeeklyGarantedSalary') @Default(0) double weeklyGuaranteedSalary,
    @JsonKey(name: 'Weight') @Default(0) double weight,
    @JsonKey(name: 'IsOnline') @Default(false) bool isOnline,
    @JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) DateTime? busyUntil,
    @JsonKey(name: 'HomeAirport') Airport? homeAirport,
    @JsonKey(name: 'CurrentAirport') Airport? currentAirport,
    @JsonKey(name: 'CurrentAircraftId') String? currentAircraftId,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  CrewCategory get category => CrewCategory.fromCode(categoryCode);
  bool get isAssignable => category.isAssignable;
  // Verified scales: these three are 0-1; happiness is already 0-100.
  double get fatiguePercent => fatigue * 100;
  double get punctualityPercent => punctuality * 100;
  double get comfortPercent => comfort * 100;
  double get happinessPercent => happiness;
  List<String> get certificationShortNames => [
        for (final c in classCertifications)
          if (c.aircraftClass?.shortName != null) c.aircraftClass!.shortName!,
      ];
}
