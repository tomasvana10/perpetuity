import "package:jiffy/jiffy.dart";
import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/streak_manager.dart";
import "package:perpetuity/habit/model/tracker.dart";

extension HabitStreakManagerExtension on HabitStreakManager {
  bool get areStreaksEnabled => streakGoal != HabitStreakGoal.none;

  int _getHabitCompletionsOfStreakInterval(
    List<HabitCompletion> habitCompletions,
  ) {
    final now = Jiffy.now().toLocal();
    final dayOfYear = now.dayOfYear;
    final weekOfYear = now.weekOfYear;
    final month = now.month;
    final year = now.year;

    return habitCompletions
        .where((c) {
          final time = Jiffy.parseFromDateTime(c.completionTime).toLocal();

          if (time.year != year) return false;

          return switch (streakGoal) {
            HabitStreakGoal.daily => time.dayOfYear == dayOfYear,
            HabitStreakGoal.weekly => time.weekOfYear == weekOfYear,
            HabitStreakGoal.monthly => time.month == month,
            _ => false,
          };
        })
        .toList()
        .length;
  }

  bool shouldResetStreak(HabitCompletion mostRecentHabitCompletion) {
    if (!areStreaksEnabled || streak == 0) return false;

    final now = Jiffy.now().toLocal();
    final last = Jiffy.parseFromDateTime(
      mostRecentHabitCompletion.completionTime,
    ).toLocal();

    return switch (streakGoal) {
      HabitStreakGoal.daily => !last.isSame(
        now.subtract(days: 2),
        unit: Unit.day,
      ),
      HabitStreakGoal.weekly => !last.isSame(
        now.subtract(weeks: 2),
        unit: Unit.week,
      ),
      HabitStreakGoal.monthly => !last.isSame(
        now.subtract(months: 2),
        unit: Unit.month,
      ),
      _ => false,
    };
  }

  void resetStreak(HabitCompletion mostRecentHabitCompletion) {
    if (shouldResetStreak(mostRecentHabitCompletion)) streak = 0;
  }

  void bumpStreak(List<HabitCompletion> habitCompletions) {
    if (streakGoal == HabitStreakGoal.none) return;

    final completions = _getHabitCompletionsOfStreakInterval(habitCompletions);

    if (completions == streakIntervalCompletions) {
      streak++;
      if (streak > bestStreak) bestStreak = streak;
    }
  }
}
