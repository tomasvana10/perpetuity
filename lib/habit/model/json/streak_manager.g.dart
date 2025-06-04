// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../streak_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitStreakManager _$HabitStreakManagerFromJson(Map<String, dynamic> json) =>
    HabitStreakManager.create(
      streakGoal: $enumDecode(_$HabitStreakGoalEnumMap, json['streakGoal']),
      streakIntervalCompletions: (json['streakIntervalCompletions'] as num)
          .toInt(),
      streak: (json['streak'] as num?)?.toInt(),
      bestStreak: (json['bestStreak'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HabitStreakManagerToJson(HabitStreakManager instance) =>
    <String, dynamic>{
      'streakGoal': _$HabitStreakGoalEnumMap[instance.streakGoal]!,
      'streakIntervalCompletions': instance.streakIntervalCompletions,
      'streak': instance.streak,
      'bestStreak': instance.bestStreak,
    };

const _$HabitStreakGoalEnumMap = {
  HabitStreakGoal.none: 'none',
  HabitStreakGoal.daily: 'daily',
  HabitStreakGoal.weekly: 'weekly',
  HabitStreakGoal.monthly: 'monthly',
};
