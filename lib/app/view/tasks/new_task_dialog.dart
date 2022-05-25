import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:task_app/app/controller/home/home_controller.dart';
import 'package:task_app/app/model/task.dart';

class NewTaskDialog extends StatelessWidget {
  final Function _saveTask;

  NewTaskDialog(this._saveTask);

  HomeController _homeController = HomeController();

  static final _controllerTitle = TextEditingController();
  static final _controllerDescription = TextEditingController();

  _title() {
    return TextField(
      onChanged: _homeController.setTitle,
      decoration: InputDecoration(
        labelText: "Título",
      ),
    );
  }

  _description() {
    return TextField(
      onChanged: _homeController.setDescription,
      controller: _controllerDescription,
      decoration: InputDecoration(
        labelText: "Descrição",
      ),
      minLines: 2,
      maxLines: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    void _handleSave() {
      final Task task = Task(
        _homeController.title,
        _homeController.description,
        _homeController.finished,
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
          _title(),
          _description(),
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
