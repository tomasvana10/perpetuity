import "package:flutter/material.dart";
import "package:perpetuity/l10n/app_localizations.dart";
import "package:perpetuity/theme/dark_theme.dart";
import "package:perpetuity/theme/light_theme.dart";

void main() {
  runApp(const Perpetuity());
}

class Perpetuity extends StatelessWidget {
  const Perpetuity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "A free, feature-rich habit tracker",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(AppLocalizations.of(context)!.greeting("bob"))),
    );
  }
}
