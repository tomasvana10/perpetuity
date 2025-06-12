import "package:flutter/material.dart";
import "package:perpetuity/l10n/app_localizations.dart";
import "package:perpetuity/pages/home/home_page_tab.dart";

class HabitPage extends StatefulWidget implements HomePageTab {
  const HabitPage({super.key});

  @override
  State<HabitPage> createState() => _HabitPageState();

  @override
  get ident => "habits";

  @override
  getLocalisedIdent(BuildContext context) =>
      AppLocalizations.of(context)!.habits;

  @override
  get icons => (
    inactive: Icon(Icons.assignment_outlined),
    active: Icon(Icons.assignment),
  );
}

class _HabitPageState extends State<HabitPage> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.getLocalisedIdent(context));
  }
}
