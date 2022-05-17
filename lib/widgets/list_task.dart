import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import '../models/task.dart';

class ListTask extends StatelessWidget {
  final List<Task> _listTask;
  final Function _handleSwitchChange;
  final bool _isPortrait;
  ListTask(this._listTask, this._handleSwitchChange, this._isPortrait);

  @override
  Widget build(BuildContext context) {
    final int _maxLength = _isPortrait ? 75 : 180;

    _handlerOnTap(String title, String description) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Righteous",
              ),
            ),
          ),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Voltar",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            )
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: _listTask.length,
      separatorBuilder: (_, index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(_listTask[index].title),
          child: ListTile(
            title: Text(
              _listTask[index].title,
              style: _listTask[index].finished
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : null,
            ),
            subtitle: _listTask[index].finished
                ? null
                : Text(
                    _listTask[index].description.length > _maxLength
                        ? "${_listTask[index].description.substring(0, _maxLength)}..."
                        : _listTask[index].description,
                  ),
            leading: Switch.adaptive(
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.redAccent.shade100,
              value: _listTask[index].finished,
              onChanged: (value) => _handleSwitchChange(index, value),
            ),
            onTap: () => _handlerOnTap(
                _listTask[index].title, _listTask[index].description),
          ),
          background: Container(
            color: Colors.red,
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
