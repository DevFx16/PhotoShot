import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import './Views/Galeria.dart';
import './Views/Modal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhotoShot',
      theme: ThemeData.light(),
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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        backgroundColor: Colors.red,
        title: new Text('PhotoShot'),
        actions: [searchBar.getSearchAction(context)]);
  }

  _Inicio() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        closeOnSubmit: true,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: searchBar.build(context),
      body: new Galeria(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo, color: Colors.white),
        tooltip: 'Add Photo',
        onPressed: () => new Modal(_scaffoldKey),
        backgroundColor: Colors.red,
      ),
    );
  }
}