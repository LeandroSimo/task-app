import 'package:flutter/material.dart';

class ScreenPreviewHome extends StatelessWidget {
  Widget _buttonNext(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: Center(
        child: Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Let\'s go task',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_right_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/task.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [_buttonNext(context)],
        ),
      ),
    );
  }
}
