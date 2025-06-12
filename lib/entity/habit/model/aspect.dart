import "package:flutter/widgets.dart";
import "package:perpetuity/l10n/app_localizations.dart";

abstract interface class HabitAspect {
  String getRepr(BuildContext context);
}

enum HabitCategory implements HabitAspect {
  mind,
  health,
  productivity,
  finance,
  social,
  environment,
  self,
  misc;

  @override
  String getRepr(context) => AppLocalizations.of(context)!.habitCategory(name);
}

enum HabitIntent implements HabitAspect {
  build,
  quit;

  @override
  String getRepr(context) => AppLocalizations.of(context)!.habitIntent(name);
}

enum HabitTime implements HabitAspect {
  any,
  morning,
  afternoon,
  evening,
  night;

  @override
  String getRepr(context) => AppLocalizations.of(context)!.habitTime(name);

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
  String getRepr(context) =>
      AppLocalizations.of(context)!.habitStreakGoal(name);
}

enum HabitTrackingMethod implements HabitAspect {
  tick,
  value;

  @override
  String getRepr(context) =>
      AppLocalizations.of(context)!.habitTrackingMethod(name);
}
