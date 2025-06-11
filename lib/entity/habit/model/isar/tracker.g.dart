// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tracker.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HabitCompletionSchema = Schema(
  name: r'HabitCompletion',
  id: -9119310967514767545,
  properties: {
    r'completionTime': PropertySchema(
      id: 0,
      name: r'completionTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _habitCompletionEstimateSize,
  serialize: _habitCompletionSerialize,
  deserialize: _habitCompletionDeserialize,
  deserializeProp: _habitCompletionDeserializeProp,
);

int _habitCompletionEstimateSize(
  HabitCompletion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _habitCompletionSerialize(
  HabitCompletion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.completionTime);
}

HabitCompletion _habitCompletionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HabitCompletion();
  object.completionTime = reader.readDateTime(offsets[0]);
  return object;
}

P _habitCompletionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension HabitCompletionQueryFilter
    on QueryBuilder<HabitCompletion, HabitCompletion, QFilterCondition> {
  QueryBuilder<HabitCompletion, HabitCompletion, QAfterFilterCondition>
      completionTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completionTime',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitCompletion, HabitCompletion, QAfterFilterCondition>
      completionTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completionTime',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitCompletion, HabitCompletion, QAfterFilterCondition>
      completionTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completionTime',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitCompletion, HabitCompletion, QAfterFilterCondition>
      completionTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completionTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HabitCompletionQueryObject
    on QueryBuilder<HabitCompletion, HabitCompletion, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HabitTrackerSchema = Schema(
  name: r'HabitTracker',
  id: -3091073030211222329,
  properties: {
    r'canExceedDailyCompletions': PropertySchema(
      id: 0,
      name: r'canExceedDailyCompletions',
      type: IsarType.bool,
    ),
    r'habitCompletions': PropertySchema(
      id: 1,
      name: r'habitCompletions',
      type: IsarType.objectList,
      target: r'HabitCompletion',
    ),
    r'maxDailyCompletions': PropertySchema(
      id: 2,
      name: r'maxDailyCompletions',
      type: IsarType.long,
    ),
    r'streakManager': PropertySchema(
      id: 3,
      name: r'streakManager',
      type: IsarType.object,
      target: r'HabitStreakManager',
    ),
    r'trackingMethod': PropertySchema(
      id: 4,
      name: r'trackingMethod',
      type: IsarType.byte,
      enumMap: _HabitTrackertrackingMethodEnumValueMap,
    )
  },
  estimateSize: _habitTrackerEstimateSize,
  serialize: _habitTrackerSerialize,
  deserialize: _habitTrackerDeserialize,
  deserializeProp: _habitTrackerDeserializeProp,
);

int _habitTrackerEstimateSize(
  HabitTracker object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.habitCompletions.length * 3;
  {
    final offsets = allOffsets[HabitCompletion]!;
    for (var i = 0; i < object.habitCompletions.length; i++) {
      final value = object.habitCompletions[i];
      bytesCount +=
          HabitCompletionSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      HabitStreakManagerSchema.estimateSize(
          object.streakManager, allOffsets[HabitStreakManager]!, allOffsets);
  return bytesCount;
}

void _habitTrackerSerialize(
  HabitTracker object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.canExceedDailyCompletions);
  writer.writeObjectList<HabitCompletion>(
    offsets[1],
    allOffsets,
    HabitCompletionSchema.serialize,
    object.habitCompletions,
  );
  writer.writeLong(offsets[2], object.maxDailyCompletions);
  writer.writeObject<HabitStreakManager>(
    offsets[3],
    allOffsets,
    HabitStreakManagerSchema.serialize,
    object.streakManager,
  );
  writer.writeByte(offsets[4], object.trackingMethod.index);
}

HabitTracker _habitTrackerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HabitTracker();
  object.canExceedDailyCompletions = reader.readBool(offsets[0]);
  object.maxDailyCompletions = reader.readLong(offsets[2]);
  object.trackingMethod = _HabitTrackertrackingMethodValueEnumMap[
          reader.readByteOrNull(offsets[4])] ??
      HabitTrackingMethod.tick;
  return object;
}

P _habitTrackerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readObjectList<HabitCompletion>(
            offset,
            HabitCompletionSchema.deserialize,
            allOffsets,
            HabitCompletion(),
          ) ??
          []) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<HabitStreakManager>(
            offset,
            HabitStreakManagerSchema.deserialize,
            allOffsets,
          ) ??
          HabitStreakManager()) as P;
    case 4:
      return (_HabitTrackertrackingMethodValueEnumMap[
              reader.readByteOrNull(offset)] ??
          HabitTrackingMethod.tick) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HabitTrackertrackingMethodEnumValueMap = {
  'tick': 0,
  'value': 1,
};
const _HabitTrackertrackingMethodValueEnumMap = {
  0: HabitTrackingMethod.tick,
  1: HabitTrackingMethod.value,
};

extension HabitTrackerQueryFilter
    on QueryBuilder<HabitTracker, HabitTracker, QFilterCondition> {
  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      canExceedDailyCompletionsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canExceedDailyCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'habitCompletions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      maxDailyCompletionsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxDailyCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      maxDailyCompletionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxDailyCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      maxDailyCompletionsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxDailyCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      maxDailyCompletionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxDailyCompletions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      trackingMethodEqualTo(HabitTrackingMethod value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trackingMethod',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      trackingMethodGreaterThan(
    HabitTrackingMethod value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trackingMethod',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      trackingMethodLessThan(
    HabitTrackingMethod value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trackingMethod',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      trackingMethodBetween(
    HabitTrackingMethod lower,
    HabitTrackingMethod upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trackingMethod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HabitTrackerQueryObject
    on QueryBuilder<HabitTracker, HabitTracker, QFilterCondition> {
  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition>
      habitCompletionsElement(FilterQuery<HabitCompletion> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'habitCompletions');
    });
  }

  QueryBuilder<HabitTracker, HabitTracker, QAfterFilterCondition> streakManager(
      FilterQuery<HabitStreakManager> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'streakManager');
    });
  }
}
