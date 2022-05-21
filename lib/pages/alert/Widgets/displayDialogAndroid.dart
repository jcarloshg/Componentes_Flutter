import 'package:flutter/material.dart';

void displayDialogAndroid(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      elevation: 5,
      title: const Text("Titulo de dialog"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Cuerpo del dialog'),
          SizedBox(height: 10),
          FlutterLogo(size: 100)
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancelar", style: TextStyle(color: Colors.red)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("OK"),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );
}
