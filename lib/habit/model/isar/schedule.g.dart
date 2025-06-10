// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HabitScheduleSchema = Schema(
  name: r'HabitSchedule',
  id: 461598727459239664,
  properties: {
    r'days': PropertySchema(
      id: 0,
      name: r'days',
      type: IsarType.string,
    ),
    r'notificationDays': PropertySchema(
      id: 1,
      name: r'notificationDays',
      type: IsarType.string,
    ),
    r'sendNotifications': PropertySchema(
      id: 2,
      name: r'sendNotifications',
      type: IsarType.bool,
    ),
    r'time': PropertySchema(
      id: 3,
      name: r'time',
      type: IsarType.byte,
      enumMap: _HabitScheduletimeEnumValueMap,
    )
  },
  estimateSize: _habitScheduleEstimateSize,
  serialize: _habitScheduleSerialize,
  deserialize: _habitScheduleDeserialize,
  deserializeProp: _habitScheduleDeserializeProp,
);

int _habitScheduleEstimateSize(
  HabitSchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.days.length * 3;
  bytesCount += 3 + object.notificationDays.length * 3;
  return bytesCount;
}

void _habitScheduleSerialize(
  HabitSchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.days);
  writer.writeString(offsets[1], object.notificationDays);
  writer.writeBool(offsets[2], object.sendNotifications);
  writer.writeByte(offsets[3], object.time.index);
}

HabitSchedule _habitScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HabitSchedule();
  object.days = reader.readString(offsets[0]);
  object.notificationDays = reader.readString(offsets[1]);
  object.sendNotifications = reader.readBool(offsets[2]);
  object.time =
      _HabitScheduletimeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          HabitTime.any;
  return object;
}

P _habitScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (_HabitScheduletimeValueEnumMap[reader.readByteOrNull(offset)] ??
          HabitTime.any) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HabitScheduletimeEnumValueMap = {
  'any': 0,
  'morning': 1,
  'afternoon': 2,
  'evening': 3,
  'night': 4,
};
const _HabitScheduletimeValueEnumMap = {
  0: HabitTime.any,
  1: HabitTime.morning,
  2: HabitTime.afternoon,
  3: HabitTime.evening,
  4: HabitTime.night,
};

extension HabitScheduleQueryFilter
    on QueryBuilder<HabitSchedule, HabitSchedule, QFilterCondition> {
  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition> daysEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition> daysBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'days',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'days',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition> daysMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'days',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'days',
        value: '',
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      daysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'days',
        value: '',
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationDays',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationDays',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationDays',
        value: '',
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      notificationDaysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationDays',
        value: '',
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      sendNotificationsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sendNotifications',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition> timeEqualTo(
      HabitTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      timeGreaterThan(
    HabitTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition>
      timeLessThan(
    HabitTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitSchedule, HabitSchedule, QAfterFilterCondition> timeBetween(
    HabitTime lower,
    HabitTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HabitScheduleQueryObject
    on QueryBuilder<HabitSchedule, HabitSchedule, QFilterCondition> {}
