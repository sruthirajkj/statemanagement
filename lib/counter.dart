import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Counter_data extends StatefulWidget {
  const Counter_data({Key? key}) : super(key: key);

  @override
  State<Counter_data> createState() => _Counter_dataState();
}

class _Counter_dataState extends State<Counter_data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(Provider.of<ProviderClass>(context).n.toString()),
          ElevatedButton(
              onPressed: () {
                Provider.of<ProviderClass>(context, listen: false).brightnesss();
              },
              child: Text("click")),
        ]),
      ),
    );
  }
}
