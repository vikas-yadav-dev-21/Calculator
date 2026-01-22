import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback onPress;

  const CalcButton({super.key,
    required this.title,
    this.color=Colors.grey,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                  ),)
            ),

          ),
        ),
      ),
    );
  }
}

