import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";

part "isar/schedule.g.dart";

@embedded
class HabitSchedule {
  @ignore
  static const _defaultDays = "0123456";
  @ignore
  static const _defaultNotificationDays = "0123456";

  String days;
  String notificationDays;
  bool sendNotifications;
  @enumerated
  HabitTime time;

  HabitSchedule({
    this.days = HabitSchedule._defaultDays,
    this.notificationDays = HabitSchedule._defaultNotificationDays,
    this.sendNotifications = true,
    this.time = HabitTime.any,
  });
}
