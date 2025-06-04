import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/schedule.dart";

extension HabitScheduleExtension on HabitSchedule {
  bool get canSendNotifications => sendNotifications;

  bool get isInHabitWindow => isDuringHabitTime && isDuringHabitDay;

  bool get isDuringHabitTime =>
      time == HabitTime.any ? true : HabitTime.getTime() == time;

  bool get isDuringHabitDay =>
      days.contains(DateTime.now().toLocal().weekday.toString());
}
