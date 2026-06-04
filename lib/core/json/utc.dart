// OnAir timestamps are UTC ("Zulu") but usually arrive without a 'Z' suffix,
// so a naive DateTime.parse treats them as local time. These converters force
// the value to be interpreted as UTC, yielding the correct absolute instant.

DateTime? utcFromJsonNullable(Object? value) {
  if (value == null) return null;
  final s = value as String;
  final hasZone =
      s.endsWith('Z') || RegExp(r'[+-]\d{2}:?\d{2}$').hasMatch(s);
  return DateTime.parse(hasZone ? s : '${s}Z').toUtc();
}

DateTime utcFromJson(Object? value) => utcFromJsonNullable(value)!;
