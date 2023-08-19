import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logsheet_mobile/common/app_theme.dart';

class BoardingHeaderWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  const BoardingHeaderWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        SvgPicture.asset('assets/images/ellipse.svg'),
        Positioned(
          left: 32,
          top: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: textTheme.headlineLarge!.copyWith(
                  color: AppTheme.darkYellow,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title2,
                style: textTheme.headlineLarge!.copyWith(
                  color: AppTheme.darkYellow,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title3,
                style: textTheme.headlineSmall!.copyWith(
                  color: AppTheme.primaryBlack,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 8),
              SvgPicture.asset('assets/images/arrow_right.svg'),
            ],
          ),
        ),
      ],
    );
  }
}
