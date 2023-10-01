import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/navigation/nav_provider.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Column(
        children: [
          Text("The message from Screen1 is: " +
              Provider.of<NavProvider>(context).navValue),
          ElevatedButton(
            child: Text("go back to screen1"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
