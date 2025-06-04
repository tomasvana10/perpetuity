import "package:json_annotation/json_annotation.dart";
import "package:perpetuity/habit/model/aspect.dart";

part "json/streak_manager.g.dart";

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

@JsonSerializable(constructor: "create")
class HabitStreakManager {
  HabitStreakGoal streakGoal;
  int streakIntervalCompletions;
  int streak;
  int bestStreak;

  HabitStreakManager.create({
    required this.streakGoal,
    required this.streakIntervalCompletions,
    int? streak,
    int? bestStreak,
  }) : streak = streak ?? 0,
       bestStreak = bestStreak ?? 0;

  factory HabitStreakManager.fromJson(Map<String, dynamic> json) =>
      _$HabitStreakManagerFromJson(json);

  Map<String, dynamic> toJson() => _$HabitStreakManagerToJson(this);
}
