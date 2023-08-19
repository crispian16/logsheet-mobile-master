import 'package:flutter/material.dart';

class PoweredByPlnWidget extends StatelessWidget {
  const PoweredByPlnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Powered by', style: textTheme.bodySmall),
        const SizedBox(height: 8),
        Image.asset(
          'assets/images/pln_tarakan_logo.jpeg',
          width: 80,
        ),
      ],
    );
  }
}
