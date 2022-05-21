import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void displayDialogIOS(BuildContext context) {
  showCupertinoDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text("Titulo de dialog"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          FlutterLogo(size: 100),
          Text('Cuerpo del dialog'),
          SizedBox(height: 10),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancelar", style: TextStyle(color: Colors.red)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Ok"),
        ),
      ],
    ),
  );
}
