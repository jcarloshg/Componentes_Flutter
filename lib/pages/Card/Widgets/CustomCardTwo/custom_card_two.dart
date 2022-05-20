import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTwoScreen extends StatelessWidget {
  const CustomCardTwoScreen({
    Key? key,
    required this.imageUrl,
    this.name,
  }) : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      // clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary,
      elevation: 10,
      child: Column(
        children: [
          // Image(
          //   image: NetworkImage(
          //     'https://www.xtrafondos.com/wallpapers/casa-kame-de-dragon-ball-3963.jpg',
          //   ),
          // ),
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/gifts/carga.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? '[NOT LABEL]'),
            )
        ],
      ),
    );
  }
}
