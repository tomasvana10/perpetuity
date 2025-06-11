import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";
import "package:perpetuity/entity/habit/model/streak_manager.dart";

part "isar/tracker.g.dart";

@embedded
class HabitCompletion {
  DateTime completionTime = DateTime.now();

  HabitCompletion();
}

@embedded
class HabitTracker {
  int maxDailyCompletions = 1;
  bool canExceedDailyCompletions = true;
  @enumerated
  HabitTrackingMethod trackingMethod = HabitTrackingMethod.tick;

  final HabitStreakManager streakManager = HabitStreakManager();
  final List<HabitCompletion> habitCompletions = [];

  HabitTracker();
}
