import "package:jiffy/jiffy.dart";
import "package:perpetuity/entity/habit/extension/streak_manager.dart";
import "package:perpetuity/entity/habit/model/tracker.dart";

extension HabitTrackerExtension on HabitTracker {
  HabitCompletion? get mostRecentCompletion =>
      habitCompletions.isEmpty ? null : habitCompletions.last;

  bool get canComplete =>
      canExceedDailyCompletions ||
      mostRecentCompletion == null ||
      !Jiffy.parseFromDateTime(
        mostRecentCompletion!.completionTime,
      ).toLocal().isSame(Jiffy.now().toLocal(), unit: Unit.day);

  void complete() {
    habitCompletions.add(HabitCompletion());
    streakManager.bumpStreak(habitCompletions);
  }
}
