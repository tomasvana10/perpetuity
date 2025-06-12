import "package:flutter/material.dart";
import "package:perpetuity/l10n/app_localizations.dart";
import "package:perpetuity/pages/home/home_page_tab.dart";

class ChartPage extends StatefulWidget implements HomePageTab {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();

  @override
  get ident => "charts";

  @override
  getLocalisedIdent(BuildContext context) =>
      AppLocalizations.of(context)!.charts;

  @override
  get icons => (
    inactive: Icon(Icons.insert_chart_outlined_outlined),
    active: Icon(Icons.insert_chart),
  );
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.getLocalisedIdent(context));
  }
}
