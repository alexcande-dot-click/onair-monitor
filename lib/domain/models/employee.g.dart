// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassCertification _$ClassCertificationFromJson(Map<String, dynamic> json) =>
    _ClassCertification(
      aircraftClass: json['AircraftClass'] == null
          ? null
          : AircraftClass.fromJson(
              json['AircraftClass'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ClassCertificationToJson(_ClassCertification instance) =>
    <String, dynamic>{'AircraftClass': instance.aircraftClass};

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  id: json['Id'] as String,
  pseudo: json['Pseudo'] as String? ?? '',
  categoryCode: (json['Category'] as num?)?.toInt() ?? 0,
  statusCode: (json['Status'] as num?)?.toInt() ?? 0,
  classCertifications:
      (json['ClassCertifications'] as List<dynamic>?)
          ?.map((e) => ClassCertification.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  fatigue: (json['Fatigue'] as num?)?.toDouble() ?? 0,
  punctuality: (json['Punctuality'] as num?)?.toDouble() ?? 0,
  comfort: (json['Comfort'] as num?)?.toDouble() ?? 0,
  happiness: (json['Happiness'] as num?)?.toDouble() ?? 0,
  flightHoursInCompany: (json['FlightHoursInCompany'] as num?)?.toDouble() ?? 0,
  flightHoursGrandTotal:
      (json['FlightHoursGrandTotal'] as num?)?.toDouble() ?? 0,
  perFlightHourWages: (json['PerFlightHourWages'] as num?)?.toDouble() ?? 0,
  weeklyGuaranteedSalary:
      (json['WeeklyGarantedSalary'] as num?)?.toDouble() ?? 0,
  weight: (json['Weight'] as num?)?.toDouble() ?? 0,
  isOnline: json['IsOnline'] as bool? ?? false,
  busyUntil: json['BusyUntil'] == null
      ? null
      : DateTime.parse(json['BusyUntil'] as String),
  homeAirport: json['HomeAirport'] == null
      ? null
      : Airport.fromJson(json['HomeAirport'] as Map<String, dynamic>),
  currentAirport: json['CurrentAirport'] == null
      ? null
      : Airport.fromJson(json['CurrentAirport'] as Map<String, dynamic>),
  currentAircraftId: json['CurrentAircraftId'] as String?,
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'Id': instance.id,
  'Pseudo': instance.pseudo,
  'Category': instance.categoryCode,
  'Status': instance.statusCode,
  'ClassCertifications': instance.classCertifications,
  'Fatigue': instance.fatigue,
  'Punctuality': instance.punctuality,
  'Comfort': instance.comfort,
  'Happiness': instance.happiness,
  'FlightHoursInCompany': instance.flightHoursInCompany,
  'FlightHoursGrandTotal': instance.flightHoursGrandTotal,
  'PerFlightHourWages': instance.perFlightHourWages,
  'WeeklyGarantedSalary': instance.weeklyGuaranteedSalary,
  'Weight': instance.weight,
  'IsOnline': instance.isOnline,
  'BusyUntil': instance.busyUntil?.toIso8601String(),
  'HomeAirport': instance.homeAirport,
  'CurrentAirport': instance.currentAirport,
  'CurrentAircraftId': instance.currentAircraftId,
};
