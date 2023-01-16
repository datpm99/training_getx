import 'package:flutter/material.dart';
import '/const/import_const.dart';

class ButtonLogin extends StatelessWidget {
  ButtonLogin({Key? key, required this.buttonName, required this.onPressed}) : super(key: key);

  final String buttonName;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 316,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: Styles.normalTextW700(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          primary: Styles.blue7,
        ),
      ),
    );
  }
}
