import "package:flutter/material.dart";

class PerpetuityNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            "Perpetuity",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(28, 16, 28, 10), child: Divider()),
        NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Settings"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.help),
          label: Text("Help & feedback"),
        ),
      ],
    );
  }
}
