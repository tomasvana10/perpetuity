// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tracker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitTracker _$HabitTrackerFromJson(Map<String, dynamic> json) =>
    HabitTracker.create(
      maxDailyCompletions: (json['maxDailyCompletions'] as num).toInt(),
      canExceedDailyCompletions: json['canExceedDailyCompletions'] as bool,
      trackingMethod: $enumDecode(
        _$HabitTrackingMethodEnumMap,
        json['trackingMethod'],
      ),
      streak: HabitStreakManager.fromJson(
        json['streak'] as Map<String, dynamic>,
      ),
      habitCompletions: (json['habitCompletions'] as List<dynamic>?)
          ?.map(
            (e) => _$recordConvert(
              e,
              ($jsonValue) => (
                completionTime: DateTime.parse(
                  $jsonValue['completionTime'] as String,
                ),
              ),
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$HabitTrackerToJson(
  HabitTracker instance,
) => <String, dynamic>{
  'maxDailyCompletions': instance.maxDailyCompletions,
  'canExceedDailyCompletions': instance.canExceedDailyCompletions,
  'trackingMethod': _$HabitTrackingMethodEnumMap[instance.trackingMethod]!,
  'streak': instance.streak,
  'habitCompletions': instance.habitCompletions
      .map(
        (e) => <String, dynamic>{
          'completionTime': e.completionTime.toIso8601String(),
        },
      )
      .toList(),
};

const _$HabitTrackingMethodEnumMap = {
  HabitTrackingMethod.tick: 'tick',
  HabitTrackingMethod.value: 'value',
};

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);
