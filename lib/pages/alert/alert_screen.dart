import 'dart:io';

import 'package:components_flutter/pages/alert/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Mostrar una alerta ANDROID",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              onPressed: () => Platform.isIOS
                  ? displayDialogIOS(context)
                  : displayDialogAndroid(context),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Mostrar una alerta IOS",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              onPressed: () => displayDialogIOS(context),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.add_alert_sharp),
      ),
    );
  }
}
