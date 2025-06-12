import "package:flutter/material.dart";
import "package:perpetuity/components/app_bar.dart";
import "package:perpetuity/components/nav_drawer.dart";
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
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
        child: widget.destinations[_currentPageIndex],
      ),
      drawer: PerpetuityNavigationDrawer(),
      appBar: PerpetuityAppBar(title: "Perpetuity"),
    );
  }
}
