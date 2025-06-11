part of "tracker.dart";

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
  HabitStreakGoal streakGoal;
  int streakIntervalCompletions;
  int streak;
  int bestStreak;

  HabitStreakManager({
    this.streakGoal = HabitStreakGoal.daily,
    this.streakIntervalCompletions = 0,
    this.streak = 0,
    this.bestStreak = 0,
  });
}
