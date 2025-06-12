// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get dashboard => 'Dashboard';

  @override
  String get habits => 'Habits';

  @override
  String get charts => 'Charts';

  @override
  String get newHabit => 'New habit';

  @override
  String get perpetuity => 'Perpetuity';

  @override
  String get settings => 'Settings';

  @override
  String get helpAndFeedback => 'Help & feedback';

  @override
  String get credits => 'Credits';

  @override
  String habitCategory(String category) {
    String _temp0 = intl.Intl.selectLogic(category, {
      'mind': 'Mind',
      'health': 'Health & Fitness',
      'productivity': 'Productivity',
      'finance': 'Finance',
      'social': 'Social',
      'environment': 'Environment',
      'self': 'Self-care',
      'misc': 'Miscellaneous',
      'other': 'Unknown',
    });
    return '$_temp0';
  }

  @override
  String habitIntent(String intent) {
    String _temp0 = intl.Intl.selectLogic(intent, {
      'build': 'Build',
      'quit': 'Quit',
      'other': 'Unknown',
    });
    return '$_temp0';
  }

  @override
  String habitTime(String time) {
    String _temp0 = intl.Intl.selectLogic(time, {
      'any': 'Any',
      'morning': 'Morning',
      'afternoon': 'Afternoon',
      'evening': 'Evening',
      'night': 'Night',
      'other': 'Unknown',
    });
    return '$_temp0';
  }

  @override
  String habitStreakGoal(String goal) {
    String _temp0 = intl.Intl.selectLogic(goal, {
      'none': 'None',
      'daily': 'Daily',
      'weekly': 'Weekly',
      'monthly': 'Monthly',
      'other': 'Unknown',
    });
    return '$_temp0';
  }

  @override
  String habitTrackingMethod(String method) {
    String _temp0 = intl.Intl.selectLogic(method, {
      'tick': 'Tick-off to track',
      'value': 'Track by value',
      'other': 'Unknown',
    });
    return '$_temp0';
  }
}
