import "package:perpetuity/util/extensions.dart";

abstract interface class HabitAspect {
  String get repr;
}

enum HabitCategory implements HabitAspect {
  mind,
  health,
  productivity,
  finance,
  social,
  environment,
  self,
  other;

  @override
  String get repr => switch (this) {
    HabitCategory.mind => "Mind",
    HabitCategory.health => "Health & Fitness",
    HabitCategory.productivity => "Productivity",
    HabitCategory.finance => "Finance",
    HabitCategory.social => "Social",
    HabitCategory.environment => "Environment",
    HabitCategory.self => "Self-care",
    HabitCategory.other => "Other",
  };
}

enum HabitIntent implements HabitAspect {
  build,
  quit;

  @override
  String get repr => name.capitalise();
}

enum HabitTime implements HabitAspect {
  any,
  morning,
  afternoon,
  evening,
  night;

  @override
  String get repr => name.capitalise();

  static HabitTime getTime() {
    final hour = DateTime.now().toLocal().hour;
    if (hour >= 5 && hour < 12) return HabitTime.morning;
    if (hour >= 12 && hour < 17) return HabitTime.afternoon;
    if (hour >= 17 && hour < 21) return HabitTime.evening;
    return HabitTime.night;
  }
}

enum HabitStreakGoal implements HabitAspect {
  none,
  daily,
  weekly,
  monthly;

  @override
  String get repr => name.capitalise();
}

enum HabitTrackingMethod implements HabitAspect {
  tick,
  value;

  @override
  String get repr => switch (this) {
    HabitTrackingMethod.tick => "Tick-off to track",
    HabitTrackingMethod.value => "Track by value",
  };
}
