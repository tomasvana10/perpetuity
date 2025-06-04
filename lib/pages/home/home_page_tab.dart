import "package:flutter/widgets.dart";

abstract interface class HomePageTab {
  String get ident;

  String getLocalisedIdent(BuildContext context);

  ({Icon inactive, Icon active}) get icons;
}
