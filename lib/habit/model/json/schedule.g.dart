// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitSchedule _$HabitScheduleFromJson(Map<String, dynamic> json) =>
    HabitSchedule.create(
      days: json['days'] as String?,
      notificationDays: json['notificationDays'] as String?,
      sendNotifications: json['sendNotifications'] as bool,
      time: $enumDecode(_$HabitTimeEnumMap, json['time']),
    );

Map<String, dynamic> _$HabitScheduleToJson(HabitSchedule instance) =>
    <String, dynamic>{
      'days': instance.days,
      'notificationDays': instance.notificationDays,
      'sendNotifications': instance.sendNotifications,
      'time': _$HabitTimeEnumMap[instance.time]!,
    };

const _$HabitTimeEnumMap = {
  HabitTime.any: 'any',
  HabitTime.morning: 'morning',
  HabitTime.afternoon: 'afternoon',
  HabitTime.evening: 'evening',
  HabitTime.night: 'night',
};
