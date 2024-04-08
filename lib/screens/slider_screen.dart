import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primaryColor,
            value: _sliderValue,
            onChanged: _sliderEnable ? 
            (value) {
              setState(() {
                _sliderValue = value;
              });
            }
            : null,
          ),
          Checkbox(
            value: _sliderEnable, 
            onChanged: (value){
              setState(() {
                _sliderEnable = value ?? true;
              });
            }
          ),
          CheckboxListTile(
            title: const Text('Enable Slider'),
            activeColor: AppTheme.primaryColor,
            value: _sliderEnable, 
            onChanged: (value){
              setState(() {
                _sliderEnable = value ?? true;
              });
            }
          ),
          Switch(
            value: _sliderEnable, 
            activeColor: AppTheme.primaryColor,
            onChanged: (value){
            setState(() {
              _sliderEnable = value;
            });
          }),
          SwitchListTile.adaptive(
            title: const Text('Enable Slider'),
            activeColor: AppTheme.primaryColor,
            value: _sliderEnable, 
            onChanged: (value){
              setState(() {
                _sliderEnable = value;
              });
            }
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://cdn.vox-cdn.com/thumbor/9s2_gGrZ_W0dvMI812_cb8UXFp8=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/12884425/Spider_Man_Screen_Shot_9_10_18__1.03_PM.png'), 
                fit: BoxFit.cover,
                width: _sliderValue, 
                height: _sliderValue
              ),
            ),
          ),
        ],
      ),
    );
  }
}