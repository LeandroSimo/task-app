import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NewTaskDialog extends StatelessWidget {
  static final _controllerTitle = TextEditingController();
  static final _controllerDescription = TextEditingController();

  final Widget _title = TextField(
    controller: _controllerTitle,
    decoration: InputDecoration(
      labelText: "Título",
    ),
  );
  final Widget _description = TextField(
    controller: _controllerDescription,
    decoration: InputDecoration(
      labelText: "Descrição",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "Adicionar Tarefa",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Righteous",
          ),
        ),
      ),
      content: Column(
        children: [
          _title,
          _description,
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text("Salvar"),
        ),
      ],
    );
  }
}
