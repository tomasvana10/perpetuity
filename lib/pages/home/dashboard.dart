import "package:flutter/material.dart";
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
    return FilledButton(onPressed: () {}, child: const Text("Hello"));
  }
}
