import "package:dynamic_color/dynamic_color.dart";
import "package:flutter/material.dart";
import "package:perpetuity/db/main.dart";
import "package:perpetuity/pages/home/charts.dart";
import "package:perpetuity/pages/home/habits.dart";
import "package:perpetuity/pages/home/scaffold.dart";
import "package:perpetuity/l10n/app_localizations.dart";
import "package:perpetuity/pages/home/dashboard.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await AppDB.db; // accessing this getter initialises the database

  runApp(const Perpetuity());
}

class Perpetuity extends StatelessWidget {
  const Perpetuity({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (light, dark) {
        return MaterialApp(
          title: "A free, feature-rich habit tracker",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme:
                light ?? ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme:
                dark ??
                ColorScheme.fromSeed(
                  seedColor: Colors.indigo,
                  brightness: Brightness.dark,
                ),
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: HomePageScaffold(
            destinations: [DashboardPage(), HabitPage(), ChartPage()],
          ),
        );
      },
    );
  }
}
