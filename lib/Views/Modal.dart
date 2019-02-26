import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tags/input_tags.dart';
import 'package:image_picker/image_picker.dart';

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
  int group = 0;
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  _estado(int e) {
    setState(() {
      this.group = e;
    });
  }

  Widget _componente() {
    if (this.group == 0) {
      return TextField(
        cursorColor: Colors.red,
        decoration: InputDecoration(
          labelText: 'Link',
          labelStyle: TextStyle(fontSize: 16, color: Colors.red),
          icon: Icon(Icons.link),
        ),
      );
    } else if (this.group == 1) {
      return Container(
        alignment: Alignment(0, 0),
        child: Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.width / 2) - 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
                borderRadius: BorderRadius.circular(2),
              ),
              child: _image == null ? Icon(Icons.broken_image, size: 100, color: Colors.red) : Image.file(_image, fit: BoxFit.fill),
            ),
            Container(padding: EdgeInsets.only(top: 10)),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async => await getImage(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.image),
                  Text('Seleccionar', style: TextStyle(fontSize: 18))
                ],
              ),
            )
          ],
        ),
      );
    }
    return null;
  }

  List<String> _tags = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          InputTags(
            margin: const EdgeInsets.only(top: 20),
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
          Container(
            padding: EdgeInsets.only(top: 10),
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: this.group,
                  activeColor: Colors.red,
                  onChanged: (e) => _estado(e),
                ),
                Text('Link', style: TextStyle(fontSize: 16, color: Colors.red)),
                Radio(
                  value: 1,
                  groupValue: this.group,
                  activeColor: Colors.red,
                  onChanged: (e) => _estado(e),
                ),
                Text(
                  'Archivo',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                )
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width / 2) + 50,
            padding: EdgeInsets.only(top: 10),
            child: _componente(),
          )
        ],
      ),
    );
  }
}
