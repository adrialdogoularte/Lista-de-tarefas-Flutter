import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  List _toDoList = [];
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    labelText: "Nova tarefa",
                    labelStyle: TextStyle(color: Colors.blueAccent)),
              )),
                RaisedButton(
                color: Colors.blueAccent,
                child: Text("ADD"),
                textColor: Colors.white,
                onPressed: (){},
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
