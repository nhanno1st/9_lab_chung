import 'package:flutter/material.dart';
import 'package:flutter_app_bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    required this.icon,
    required this.label,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
