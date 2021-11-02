import 'package:flutter/material.dart';

class PageExterne extends StatelessWidget {
  const PageExterne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Retour en arriere si on clique dessus"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Fais chier!'),
        ),
      ),
    );
  }
}
