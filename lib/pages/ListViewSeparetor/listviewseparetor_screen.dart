import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewScreenSeparetor extends StatelessWidget {
  const ListViewScreenSeparetor({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Otras cosas',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View screen separetor"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppTheme.primary,
            ),
            // ignore: avoid_print
            onTap: () => {print(options[index])},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
