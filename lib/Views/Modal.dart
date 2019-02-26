import 'package:flutter/material.dart';
import 'package:flutter_tags/input_tags.dart';

class Modal {
  Modal(GlobalKey<ScaffoldState> _key) {
    _key.currentState.showBottomSheet((context) => _Modal());
  }
}

class _Modal extends StatefulWidget {
  @override
  View createState() => View();
}

class View extends State<_Modal> {
  List<String> _tags = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          InputTags(
            margin: const EdgeInsets.only(top: 30),
            lowerCase: true,
            symmetry: false,
            tags: this._tags,
            autofocus: false,
            iconColor: Colors.redAccent[250],
            fontSize: 18,
            alignment: MainAxisAlignment.center,
            inputDecoration: InputDecoration(
              labelText: 'Añadir Tag',
              labelStyle: TextStyle(fontSize: 12, color: Colors.red),
              icon: Icon(Icons.tag_faces),
            ),
            color: Colors.redAccent,
            iconSize: 15,
            iconBackground: Colors.black,
            onInsert: (value) => print(value),
            onDelete: (value) => print(value),
          ),
        ],
      ),
    );
  }
}