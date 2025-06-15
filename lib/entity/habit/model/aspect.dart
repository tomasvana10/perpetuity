enum HabitCategory {
  mind,
  health,
  productivity,
  finance,
  social,
  environment,
  self,
  misc,
}

enum HabitIntent { build, quit }

enum HabitTime {
  any,
  morning,
  afternoon,
  evening,
  night;

  static HabitTime getTime() {
    final hour = DateTime.now().toLocal().hour;
    if (hour >= 5 && hour < 12) return HabitTime.morning;
    if (hour >= 12 && hour < 17) return HabitTime.afternoon;
    if (hour >= 17 && hour < 21) return HabitTime.evening;
    return HabitTime.night;
  }
}

enum HabitStreakGoal { none, daily, weekly, monthly }

enum HabitTrackingMethod { tick, value }
