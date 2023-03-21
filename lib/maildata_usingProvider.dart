import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'maildatacontain_provider.dart';

class Maildata_Provider extends StatefulWidget {
  const Maildata_Provider({Key? key}) : super(key: key);

  @override
  State<Maildata_Provider> createState() => _Maildata_ProviderState();
}

class _Maildata_ProviderState extends State<Maildata_Provider> {
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          TextField(
            controller: mailcontroller,
            decoration: InputDecoration(hintText: "Mail"),
          ),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(hintText: "password"),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<ProviderClass>(context, listen: false).maildata(
                    mail: mailcontroller.text,
                    password: passwordcontroller.text);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Maildatacontain_provider();
                }));
              },
              child: Text("OK"))
        ]),
      ),
    );
  }
}
