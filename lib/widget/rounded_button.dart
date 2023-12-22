import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon; //? means it can be null
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const roundedButton(
      {required this.btnName,
      this.icon,
      this.bgcolor = Colors.blue,
      this.textStyle,
      this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bgcolor,
          shadowColor: bgcolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        ),
        onPressed: () {
          callBack!();
        },
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Container(
                    width: 11,
                  ),
                  Text(
                    btnName,
                    style: textStyle,
                  )
                ],
              )
            : Text(
                btnName,
                style: textStyle,
              ));
  }
}
