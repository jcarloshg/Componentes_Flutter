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
              "https://scontent.fpbc2-3.fna.fbcdn.net/v/t39.30808-6/271737391_2702881153354236_1375726906847636604_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGFlOU2-fxg1dZTmlbTcNdM6qe7lQaFodLqp7uVBoWh0tcoUNgl69_enyfLGMZZ38OszSNnemJwGGy3dyLonDZ0&_nc_ohc=MFMG9QAIbIYAX8875Q9&_nc_ht=scontent.fpbc2-3.fna&oh=00_AT-y7boclhTFo9C5jZN9F_-jAfZJ9jUWoQT9J1db3THSTg&oe=628DA651"),
        ),
      ),
    );
  }
}
