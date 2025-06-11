import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";

part "isar/tracker.g.dart";
part "streak_manager.dart";

@embedded
class HabitCompletion {
  DateTime completionTime = DateTime.now();

  HabitCompletion();
}

@embedded
class HabitTracker {
  int maxDailyCompletions;
  bool canExceedDailyCompletions;
  @enumerated
  HabitTrackingMethod trackingMethod;

  HabitStreakManager streak = HabitStreakManager();
  final List<HabitCompletion> habitCompletions = [];

  HabitTracker({
    this.maxDailyCompletions = 1,
    this.canExceedDailyCompletions = true,
    this.trackingMethod = HabitTrackingMethod.tick,
  });
}
