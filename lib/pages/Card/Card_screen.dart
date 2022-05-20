import 'package:flutter/material.dart';
import 'package:components_flutter/pages/Card/Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards screen :)"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          SizedBox(height: 30),
          CustomCardOne(),
          SizedBox(height: 10),
          CustomCardTwoScreen(
            name: 'Imagen bien chidota :)',
            imageUrl:
                'https://www.xtrafondos.com/wallpapers/casa-kame-de-dragon-ball-3963.jpg',
          ),
          SizedBox(height: 10),
          CustomCardTwoScreen(
            imageUrl:
                'https://media.magic.wizards.com/images/wallpaper/cabaretti_olena_richards_2uulxlorrx_2560x1600.jpg',
          ),
          SizedBox(height: 10),
          CustomCardTwoScreen(
            imageUrl: 'https://i.redd.it/mthr3x0q3m091.png',
          ),
        ],
      ),
    );
  }
}
