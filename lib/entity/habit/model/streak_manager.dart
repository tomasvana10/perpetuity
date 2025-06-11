import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";

part "isar/streak_manager.g.dart";

enum HabitStreakLogEntryContext { milestone, broken }

enum DailyHabitStreakMilestone {
  bronze(10),
  silver(20),
  gold(40),
  platinum(50),
  diamond(75);

  final int value;

  const DailyHabitStreakMilestone(this.value);
}

typedef HabitStreakLogEntry = ({
  HabitStreakLogEntryContext context,
  DateTime logTime,
});

@embedded
class HabitStreakManager {
  @enumerated
  HabitStreakGoal streakGoal = HabitStreakGoal.daily;
  int streakIntervalCompletions = 0;
  int streak = 0;
  int bestStreak = 0;

  HabitStreakManager();
}
