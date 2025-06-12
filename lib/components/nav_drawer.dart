import "package:flutter/material.dart";
import "package:perpetuity/l10n/app_localizations.dart";

class PerpetuityNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            AppLocalizations.of(context)!.perpetuity,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(28, 16, 28, 10), child: Divider()),
        NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text(AppLocalizations.of(context)!.settings),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.help),
          label: Text(AppLocalizations.of(context)!.helpAndFeedback),
        ),
        Padding(padding: EdgeInsets.fromLTRB(28, 10, 28, 10), child: Divider()),
        NavigationDrawerDestination(
          icon: Icon(Icons.volunteer_activism),
          label: Text(AppLocalizations.of(context)!.credits),
        ),
      ],
    );
  }
}
