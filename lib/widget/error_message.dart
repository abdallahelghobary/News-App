import 'package:flutter/material.dart';

class ErrorMassage extends StatelessWidget {
  const ErrorMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Opps Exit Problem Please Try Later ...',
        style: TextStyle(
          fontSize: 22,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
