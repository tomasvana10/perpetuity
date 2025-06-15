import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";

part "isar/schedule.g.dart";

@embedded
class HabitSchedule {
  String days;
  bool sendNotifications;
  @enumerated
  HabitTime time;

  HabitSchedule({
    this.days = "0123456",
    this.sendNotifications = true,
    this.time = HabitTime.any,
  });
}
