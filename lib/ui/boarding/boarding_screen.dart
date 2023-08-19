import 'package:flutter/material.dart';

import '../../common/app_theme.dart';
import '../login/login_screen.dart';
import '../widgets/boarding_header_widget.dart';
import '../widgets/powered_by_pln_widget.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BoardingHeaderWidget(
            title1: 'Let\'s',
            title2: 'Note your log',
            title3: 'Simplify',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                        ..pop()
                        ..push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                    },
                    child: Text(
                      'Get Started',
                      style: textTheme.bodyLarge!
                          .copyWith(color: AppTheme.darkYellow),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: PoweredByPlnWidget(),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ],
      ),
    );
  }
}
