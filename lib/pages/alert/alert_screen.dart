import 'package:components_flutter/theme/app_theme.dart';
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
        child: ElevatedButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Mostrar una alerta",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.add_alert_sharp),
      ),
    );
  }
}
