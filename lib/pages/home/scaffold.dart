import "package:flutter/material.dart";
import "package:perpetuity/components/app_bar.dart";
import "package:perpetuity/pages/home/home_page_tab.dart";

class HomePageScaffold extends StatefulWidget {
  final List<Widget> destinations;

  HomePageScaffold({super.key, required this.destinations});

  @override
  State<HomePageScaffold> createState() => _HomePageScaffoldState();
}

class _HomePageScaffoldState extends State<HomePageScaffold> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) =>
            setState(() => _currentPageIndex = index),
        selectedIndex: _currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: widget.destinations.map((dest) {
          final icons = (dest as HomePageTab).icons;
          return NavigationDestination(
            icon: icons.inactive,
            selectedIcon: icons.active,
            label: (dest as HomePageTab).getLocalisedIdent(context),
          );
        }).toList(),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
        child: widget.destinations[_currentPageIndex],
      ),
      drawer: NavigationDrawer(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              "Perpetuity",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text("Settings"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.help),
            label: Text("Help & feedback"),
          ),
        ],
      ),
      appBar: PerpetuityAppBar(
        title: (widget.destinations[_currentPageIndex] as HomePageTab)
            .getLocalisedIdent(context),
      ),
    );
  }
}
