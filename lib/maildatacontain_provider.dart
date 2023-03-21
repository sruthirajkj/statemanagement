import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Maildatacontain_provider extends StatelessWidget {
  const Maildatacontain_provider({Key? key}) : super(key: key);
  // String? mail;
  // String? password;
  // Maildatacontain_provider({required this.mail, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Text(Provider.of<ProviderClass>(context).mail1.toString()),
          Text(Provider.of<ProviderClass>(context).password1.toString())
        ]),
      ),
    );
  }
}
