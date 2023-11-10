import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TimeCardWidget extends StatelessWidget {
  const TimeCardWidget({
    super.key,
    required this.timeUnit,
    required this.label,
  });

  final String timeUnit;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor('333739'),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black38, blurRadius: 15, offset: Offset(2, 2)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              timeUnit,
              style: const TextStyle(
                fontSize: 80,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
