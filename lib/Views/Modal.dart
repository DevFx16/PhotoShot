import 'package:flutter/material.dart';
import 'package:flutter_tags/input_tags.dart';

class Modal {

  Modal(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (_) => _Modal()
    );
  }
  
}

class _Modal extends StatefulWidget {
  @override
  View createState() => View();
}

class View extends State<_Modal> {
  List<String> Tags = [];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  InputTags(
                    tags: this.Tags,
                    borderRadius: 2,
                    textColor: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
  
}