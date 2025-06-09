// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit.create(
  name: json['name'] as String,
  description: json['description'] as String,
  category: $enumDecode(_$HabitCategoryEnumMap, json['category']),
  intent: $enumDecode(_$HabitIntentEnumMap, json['intent']),
  schedule: HabitSchedule.fromJson(json['schedule'] as Map<String, dynamic>),
  tracker: HabitTracker.fromJson(json['tracker'] as Map<String, dynamic>),
  uuid: json['uuid'] as String?,
  creationTime: json['creationTime'] == null
      ? null
      : DateTime.parse(json['creationTime'] as String),
);

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'category': _$HabitCategoryEnumMap[instance.category]!,
  'intent': _$HabitIntentEnumMap[instance.intent]!,
  'schedule': instance.schedule.toJson(),
  'tracker': instance.tracker.toJson(),
  'uuid': instance.uuid,
  'creationTime': instance.creationTime.toIso8601String(),
};

const _$HabitCategoryEnumMap = {
  HabitCategory.mind: 'mind',
  HabitCategory.health: 'health',
  HabitCategory.productivity: 'productivity',
  HabitCategory.finance: 'finance',
  HabitCategory.social: 'social',
  HabitCategory.environment: 'environment',
  HabitCategory.self: 'self',
  HabitCategory.other: 'other',
};

const _$HabitIntentEnumMap = {
  HabitIntent.build: 'build',
  HabitIntent.quit: 'quit',
};
