import 'package:flutter/material.dart';

class IconLoginButton extends StatelessWidget {
  IconLoginButton({Key? key, required this.colour, required this.text, required this.onTap, required this.icon})
      : super(key: key);

  late VoidCallback onTap;
  late Text text;
  Color colour;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colour),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
        width: 270,
        height: 52,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 15,
            ),
            text,
          ],
        ),
      ),
    );
  }
}