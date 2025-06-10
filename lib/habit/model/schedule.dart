import "package:isar/isar.dart";
import "package:perpetuity/habit/model/aspect.dart";

part "isar/schedule.g.dart";

@embedded
class HabitSchedule {
  @ignore
  static final _defaultDays = "0123456";
  @ignore
  static final _defaultNotificationDays = "0123456";

  String days = HabitSchedule._defaultDays;
  String notificationDays = HabitSchedule._defaultNotificationDays;
  bool sendNotifications = true;
  @enumerated
  HabitTime time = HabitTime.any;

  HabitSchedule();
}
