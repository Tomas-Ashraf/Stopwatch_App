import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget(
      {super.key, required this.onPressed, required this.buttonText});
  final VoidCallback onPressed;
  final String buttonText;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor('333739'),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(2, 2)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            widget.buttonText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
    //     MaterialButton(
    //   onPressed: widget.onPressed,
    //   elevation: 100.0,
    //   color: HexColor('333739'),
    //   child: Text(
    //     widget.buttonText,
    //     style: const TextStyle(
    //       color: Colors.white,
    //     ),
    //   ),
    // );
  }
}
