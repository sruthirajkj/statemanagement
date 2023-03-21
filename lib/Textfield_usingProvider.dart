import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Text_provider extends StatelessWidget {
  Text_provider({Key? key}) : super(key: key);

  TextEditingController txtdata = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: txtdata,
            decoration: InputDecoration(hintText: "enter data"),
          ),
          ElevatedButton(onPressed: () {
           Provider.of<ProviderClass>(context ,listen: false).datatext(txtdata: txtdata.text);

          }, child: Text("enter")),
          Expanded(
            child: ListView.builder(
              itemCount: Provider.of<ProviderClass>(context).data.length,
                itemBuilder:  (context,index) {
                return Text(Provider.of<ProviderClass>(context).data[index]);
              }
            ),
          )

        ]),
      ),
    );
  }
}
