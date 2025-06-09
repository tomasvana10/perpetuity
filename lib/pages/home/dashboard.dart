import "package:flutter/material.dart";
import "package:perpetuity/db/habit_db.dart";
import "package:perpetuity/habit/model/aspect.dart";
import "package:perpetuity/habit/model/habit.dart";
import "package:perpetuity/habit/model/schedule.dart";
import "package:perpetuity/habit/model/streak_manager.dart";
import "package:perpetuity/habit/model/tracker.dart";
import "package:perpetuity/l10n/app_localizations.dart";
import "package:perpetuity/pages/home/home_page_tab.dart";

class DashboardPage extends StatefulWidget implements HomePageTab {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();

  @override
  get ident => "dashboard";

  @override
  getLocalisedIdent(BuildContext context) =>
      AppLocalizations.of(context)!.dashboard;

  @override
  get icons =>
      (inactive: Icon(Icons.dashboard_outlined), active: Icon(Icons.dashboard));
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final habit = Habit.create(
      category: HabitCategory.environment,
      description: "Cut down 50 trees",
      name: "Woodcutting",
      intent: HabitIntent.build,
      schedule: HabitSchedule.create(
        sendNotifications: true,
        time: HabitTime.morning,
        days: "0123456",
        notificationDays: "0123456",
      ),
      tracker: HabitTracker.create(
        maxDailyCompletions: 1,
        canExceedDailyCompletions: true,
        trackingMethod: HabitTrackingMethod.tick,
        streakManager: HabitStreakManager.create(
          streakGoal: HabitStreakGoal.daily,
          streakIntervalCompletions: 1,
        ),
      ),
    );
    return FilledButton(
      onPressed: () async {
        await HabitDB.instance.init();
        await HabitDB.instance.insert(habit);
      },
      child: const Text("Hello"),
    );
  }
}
