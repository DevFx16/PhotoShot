import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhotoShot',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  @override
  _Inicio createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('PhotoShot'),
        actions: [searchBar.getSearchAction(context)]);
  }

  _Inicio() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: searchBar.build(context));
  }
}
