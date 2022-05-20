import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardOne extends StatelessWidget {
  const CustomCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text("Im a title"),
            subtitle: const Text(
                "Ex officia amet sunt culpa veniam. Reprehenderit Lorem cillum aliquip Lorem aliquip sunt eu do veniam aliqua. Aute pariatur qui esse pariatur aute "),
            leading: Icon(Icons.add_circle_sharp, color: AppTheme.primary),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("OK"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
