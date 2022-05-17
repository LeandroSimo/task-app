import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

class NewTaskDialog extends StatelessWidget {
  final Function _saveTask;

  NewTaskDialog(this._saveTask);

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
    minLines: 2,
    maxLines: 10,
  );

  @override
  Widget build(BuildContext context) {
    void _handleSave() {
      final Task task = Task(
        _controllerTitle.text,
        _controllerDescription.text,
        false,
      );
      _controllerTitle.clear();
      _controllerDescription.clear();
      _saveTask(task);
      Navigator.of(context).pop();
    }

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
        mainAxisSize: MainAxisSize.min,
        children: [
          _title,
          _description,
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: _handleSave,
          child: Text("Salvar"),
        ),
      ],
    );
  }
}
