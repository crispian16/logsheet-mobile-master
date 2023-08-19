import 'package:flutter/material.dart';
import 'package:logsheet_mobile/common/app_theme.dart';

import '../chosing_pltu/screen/chosing_ptlu.dart';

class WelcomeDialogWidget extends StatelessWidget {
  const WelcomeDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(32),
        height: MediaQuery.of(context).size.height * .68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome',
                  style: textTheme.headlineSmall!.copyWith(
                    color: AppTheme.primaryBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'First you should choose',
                  style: textTheme.titleMedium!.copyWith(
                    color: AppTheme.primaryBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'your location...',
                  style: textTheme.titleMedium!.copyWith(
                    color: AppTheme.primaryBlack,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/el_generator3.png',
              width: 200,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                    ..pop()
                    ..push(MaterialPageRoute(
                        builder: (context) => const ChosingPLTU()));
                },
                child: Text(
                  'Choose PLTU location',
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppTheme.darkYellow,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
