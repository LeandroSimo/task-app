import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../tasks/list_task.dart';
import '../tasks/new_task_dialog.dart';
import '../../model/task.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Task> _listTask = [];

  void _handleSwitchChange(int index, bool value) {
    setState(() {
      _listTask[index].finished = value;
    });
  }

  void _saveTask(Task task) {
    setState(() {
      _listTask.add(task);
    });
  }

  _removeItem(int index) {
    setState(() {
      _listTask.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    final _mediaQuery = MediaQuery.of(context);
    final _isPortrait = _mediaQuery.orientation == Orientation.portrait;
    final _landscapeHeigth = _mediaQuery.size.height * 0.18;
    final _portraitHeigth = _mediaQuery.size.height * 0.19;

    final _appBarHeigth = _isPortrait ? _portraitHeigth : _landscapeHeigth;

    _handleAddPress() {
      showDialog(
        context: context,
        builder: (_) => NewTaskDialog(_saveTask),
      );
    }

    _appBar() {
      return AppBar(
        bottom: PreferredSize(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Task App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      DateFormat.yMMMMEEEEd('pt_BR').format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(_appBarHeigth),
        ),
        actions: [
          IconButton(
            onPressed: _handleAddPress,
            icon: Icon(Icons.add),
          ),
        ],
        flexibleSpace: Image(
          image: AssetImage("lib/assets/images/task.png"),
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
      appBar: _appBar(),
      body: Observer(
        builder: (_) => ListTask(
          _listTask,
          _handleSwitchChange,
          _isPortrait,
          _removeItem,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAddPress,
        child: Icon(Icons.add),
      ),
    );
  }
}
