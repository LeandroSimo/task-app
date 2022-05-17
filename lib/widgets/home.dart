import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:task_app/widgets/list_task.dart';

import './new_task_dialog.dart';
import '../models/task.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Task> _listTask = [
    Task("Compras", "Comprar Notebook", false),
    Task(
        "Compras",
        "Comprar Monitor, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        false),
  ];

  void _handleSwitchChange(int index, bool value) {
    setState(() {
      _listTask[index].finished = value;
    });
  }

  _handleAddPress() {
    showDialog(
      context: context,
      builder: (_) => NewTaskDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    final _mediaQuery = MediaQuery.of(context);
    final _isPortrait = _mediaQuery.orientation == Orientation.portrait;
    final _landscapeHeigth = _mediaQuery.size.height * 0.18;
    final _portraitHeigth = _mediaQuery.size.height * 0.2;

    final _appBarHeigth = _isPortrait ? _portraitHeigth : _landscapeHeigth;

    _appBar(BuildContext context) {
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
      appBar: _appBar(context),
      body: ListTask(_listTask, _handleSwitchChange, _isPortrait),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAddPress,
        child: Icon(Icons.add),
      ),
    );
  }
}
