import "package:json_annotation/json_annotation.dart";
import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/schedule.dart";
import "package:perpetuity/habit/model/tracker.dart";
import "package:uuid/uuid.dart";

part "json/habit.g.dart";

@JsonSerializable(constructor: "create")
class Habit {
  String name;
  String description;
  HabitCategory category;
  HabitIntent intent;

  final HabitSchedule schedule;
  final HabitTracker tracker;

  final String uuid;
  final DateTime creationTime;

  Habit.create({
    required this.name,
    required this.description,
    required this.category,
    required this.intent,
    required this.schedule,
    required this.tracker,
    String? uuid,
    DateTime? creationTime,
  }) : uuid = uuid ?? Uuid().v4(),
       creationTime = creationTime ?? DateTime.now();

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

  Map<String, dynamic> toJson() => _$HabitToJson(this);
}
