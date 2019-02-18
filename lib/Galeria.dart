import 'package:flutter/material.dart';

class Galeria extends StatefulWidget {
  @override
  _Galeria createState() => new _Galeria();
}

class _Galeria extends State<Galeria> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(child: Row()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        tooltip: 'Add Photo',
      ),
    );
  }
}

main(List<String> args) {
  new Galeria();
}