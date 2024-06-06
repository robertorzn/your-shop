import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Function() onTap;

  const Button({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(212,135, 81, 77),
        borderRadius: BorderRadius.circular(40)
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(40),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white
                ),
              ),
          
              const SizedBox(width: 10),
          
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}