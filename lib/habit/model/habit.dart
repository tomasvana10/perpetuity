import "package:isar/isar.dart";
import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/schedule.dart";
import "package:perpetuity/habit/model/tracker.dart";
import "package:uuid/uuid.dart";

part "isar/habit.g.dart";

@collection
class Habit {
  Id id = Isar.autoIncrement;

  String name;
  String description;
  @enumerated
  HabitCategory category;
  @enumerated
  HabitIntent intent;

  final HabitSchedule schedule;
  final HabitTracker tracker;

  final String uuid = Uuid().v4();
  final DateTime creationTime = DateTime.now();

  Habit({
    required this.name,
    required this.description,
    required this.category,
    required this.intent,
    required this.schedule,
    required this.tracker,
  });
}
