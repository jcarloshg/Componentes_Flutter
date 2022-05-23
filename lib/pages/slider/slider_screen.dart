import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('  slider && checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            divisions: 10,
            onChanged: _sliderEnable
                ? (value) => setState(() => _sliderValue = value)
                : null,
          ),
          Checkbox(
            value: _sliderEnable,
            onChanged: (value) => setState(() => _sliderEnable = value ?? true),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(
                    image: const NetworkImage(
                      'https://i.pinimg.com/564x/e2/f6/c3/e2f6c3c001461f155567dc79b84c4abf.jpg',
                    ),
                    // fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                  Image(
                    image: const NetworkImage(
                      'https://cdnb.artstation.com/p/assets/images/images/026/731/847/large/gabosst-luna-quetzalcoatl3.jpg?1589560550',
                    ),
                    // fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
