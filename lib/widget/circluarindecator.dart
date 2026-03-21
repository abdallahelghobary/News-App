
import 'package:flutter/material.dart';

class CircularIndecator extends StatelessWidget {
  const CircularIndecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}