import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatares"),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            child: CircleAvatar(
              child: const Text("JC"),
              backgroundColor: AppTheme.primary,
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
            "https://avatars.githubusercontent.com/u/45737620?s=400&u=1cb6a15045ab77d12378bae05bc3d00e9b7d72fa&v=4",
          ),
        ),
      ),
    );
  }
}
