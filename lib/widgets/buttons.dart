import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {


  LoginButton({required this.text,Key? key, required this.onTap}) : super(key: key);
  late Text text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,

      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(5),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow.shade200),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 0.2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
          width: 170,
          height: 55,
          child: Center(child: text)
      ),

    );
  }
}