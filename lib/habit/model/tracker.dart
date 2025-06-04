import "package:json_annotation/json_annotation.dart";
import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/streak_manager.dart";

part "json/tracker.g.dart";

typedef HabitCompletion = ({DateTime completionTime});

@JsonSerializable(constructor: "create")
class HabitTracker {
  int maxDailyCompletions;
  bool canExceedDailyCompletions;
  HabitTrackingMethod trackingMethod;

  final HabitStreakManager streak;
  final List<HabitCompletion> habitCompletions;

  HabitTracker.create({
    required this.maxDailyCompletions,
    required this.canExceedDailyCompletions,
    required this.trackingMethod,
    required this.streak,
    List<HabitCompletion>? habitCompletions,
  }) : habitCompletions = habitCompletions ?? [];

  factory HabitTracker.fromJson(Map<String, dynamic> json) =>
      _$HabitTrackerFromJson(json);

  Map<String, dynamic> toJson() => _$HabitTrackerToJson(this);
}
