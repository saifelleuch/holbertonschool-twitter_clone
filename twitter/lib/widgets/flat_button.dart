import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  CustomFlatButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 30,
          height: 1,
        ),
      ),
    );
  }
}
