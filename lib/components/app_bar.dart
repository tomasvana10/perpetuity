import "package:flutter/material.dart";
import "package:perpetuity/l10n/app_localizations.dart";

enum Menu { addHabit }

class PerpetuityAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  PerpetuityAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actionsPadding: EdgeInsets.only(right: 15),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      leading: IconButton(
        padding: EdgeInsets.only(left: 10),
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Icon(Icons.menu),
      ),
      actions: [
        PopupMenuButton(
          icon: Icon(Icons.add),
          onSelected: (item) {},
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: Menu.addHabit,
              child: ListTile(
                leading: Icon(Icons.assignment_add),
                title: Text(AppLocalizations.of(context)!.newHabit),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
