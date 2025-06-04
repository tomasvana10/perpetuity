import "package:json_annotation/json_annotation.dart";
import "package:perpetuity/habit/model/aspect.dart";

part "json/schedule.g.dart";

@JsonSerializable(constructor: "create")
class HabitSchedule {
  static final _defaultDays = "0123456";
  static final _defaultNotificationDays = "0123456";

  String days;
  String notificationDays;
  bool sendNotifications;
  HabitTime time;

  HabitSchedule.create({
    String? days,
    String? notificationDays,
    required this.sendNotifications,
    required this.time,
  }) : days = days ?? HabitSchedule._defaultDays,
       notificationDays =
           notificationDays ?? HabitSchedule._defaultNotificationDays;

  factory HabitSchedule.fromJson(Map<String, dynamic> json) =>
      _$HabitScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$HabitScheduleToJson(this);
}
