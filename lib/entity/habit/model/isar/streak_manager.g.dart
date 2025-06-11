// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../streak_manager.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HabitStreakManagerSchema = Schema(
  name: r'HabitStreakManager',
  id: -3075477952378678001,
  properties: {
    r'bestStreak': PropertySchema(
      id: 0,
      name: r'bestStreak',
      type: IsarType.long,
    ),
    r'streak': PropertySchema(
      id: 1,
      name: r'streak',
      type: IsarType.long,
    ),
    r'streakGoal': PropertySchema(
      id: 2,
      name: r'streakGoal',
      type: IsarType.byte,
      enumMap: _HabitStreakManagerstreakGoalEnumValueMap,
    ),
    r'streakIntervalCompletions': PropertySchema(
      id: 3,
      name: r'streakIntervalCompletions',
      type: IsarType.long,
    )
  },
  estimateSize: _habitStreakManagerEstimateSize,
  serialize: _habitStreakManagerSerialize,
  deserialize: _habitStreakManagerDeserialize,
  deserializeProp: _habitStreakManagerDeserializeProp,
);

int _habitStreakManagerEstimateSize(
  HabitStreakManager object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _habitStreakManagerSerialize(
  HabitStreakManager object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bestStreak);
  writer.writeLong(offsets[1], object.streak);
  writer.writeByte(offsets[2], object.streakGoal.index);
  writer.writeLong(offsets[3], object.streakIntervalCompletions);
}

HabitStreakManager _habitStreakManagerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HabitStreakManager();
  object.bestStreak = reader.readLong(offsets[0]);
  object.streak = reader.readLong(offsets[1]);
  object.streakGoal = _HabitStreakManagerstreakGoalValueEnumMap[
          reader.readByteOrNull(offsets[2])] ??
      HabitStreakGoal.none;
  object.streakIntervalCompletions = reader.readLong(offsets[3]);
  return object;
}

P _habitStreakManagerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_HabitStreakManagerstreakGoalValueEnumMap[
              reader.readByteOrNull(offset)] ??
          HabitStreakGoal.none) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HabitStreakManagerstreakGoalEnumValueMap = {
  'none': 0,
  'daily': 1,
  'weekly': 2,
  'monthly': 3,
};
const _HabitStreakManagerstreakGoalValueEnumMap = {
  0: HabitStreakGoal.none,
  1: HabitStreakGoal.daily,
  2: HabitStreakGoal.weekly,
  3: HabitStreakGoal.monthly,
};

extension HabitStreakManagerQueryFilter
    on QueryBuilder<HabitStreakManager, HabitStreakManager, QFilterCondition> {
  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      bestStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bestStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      bestStreakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bestStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      bestStreakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bestStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      bestStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bestStreak',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streak',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streak',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakGoalEqualTo(HabitStreakGoal value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streakGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakGoalGreaterThan(
    HabitStreakGoal value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streakGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakGoalLessThan(
    HabitStreakGoal value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streakGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakGoalBetween(
    HabitStreakGoal lower,
    HabitStreakGoal upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streakGoal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakIntervalCompletionsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streakIntervalCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakIntervalCompletionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streakIntervalCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakIntervalCompletionsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streakIntervalCompletions',
        value: value,
      ));
    });
  }

  QueryBuilder<HabitStreakManager, HabitStreakManager, QAfterFilterCondition>
      streakIntervalCompletionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streakIntervalCompletions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HabitStreakManagerQueryObject
    on QueryBuilder<HabitStreakManager, HabitStreakManager, QFilterCondition> {}
