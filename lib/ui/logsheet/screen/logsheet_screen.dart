import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../common/app_theme.dart';
import '../provide/input_ccr_screen.dart';
import '../provide/input_turbin_screen.dart';

class LogsheetScreen extends StatelessWidget {
  const LogsheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> textMenu = [
      "CCR - 1",
      "CCR - 2",
      "Turbin - 1",
      "Turbin - 2",
      "Turbin - 1",
      "Turbin - 2",
    ];
    List<String> assetsMenu = [
      "assets/images/el_generator2.png",
      "assets/images/el_generator1.png",
      "assets/images/power.png",
      "assets/images/wind_power.png",
      "assets/images/power.png",
      "assets/images/wind_power.png",
    ];
    List<Color> backgroundColorMenu = [
      AppTheme.brightYellow,
      AppTheme.brightYellow,
      AppTheme.brightBlue,
      AppTheme.brightBlue,
      AppTheme.brightRed,
      AppTheme.brightRed,
    ];
    List<Color> textColorMenu = [
      AppTheme.darkYellow,
      AppTheme.darkYellow,
      AppTheme.darkBlue,
      AppTheme.darkBlue,
      AppTheme.darkRed,
      AppTheme.darkRed,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppBar().preferredSize.height),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PLTU 2 Jawa Barat",
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
                      Text(
                        "3 x 350 MW",
                        style: GoogleFonts.inter(fontSize: 16),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Powered by",
                        style: GoogleFonts.roboto(fontSize: 12),
                      ),
                      Image.asset(
                        "assets/images/pln_tarakan_logo.jpeg",
                        width: 80,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: double.maxFinite,
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: double.maxFinite,
                height: 128,
                child: Lottie.network(
                  "https://assets7.lottiefiles.com/packages/lf20_ocyegDP2iy.json",
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Digital Logsheet Menu",
                style: GoogleFonts.roboto(fontSize: 12),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _itemMenu(
                    assetsMenu[0],
                    textMenu[0],
                    backgroundColorMenu[0],
                    textColorMenu[0],
                    context,
                    1,
                  ),
                  const SizedBox(width: 24),
                  _itemMenu(
                    assetsMenu[1],
                    textMenu[1],
                    backgroundColorMenu[1],
                    textColorMenu[1],
                    context,
                    1,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _itemMenu(
                    assetsMenu[2],
                    textMenu[2],
                    backgroundColorMenu[2],
                    textColorMenu[2],
                    context,
                    0,
                  ),
                  const SizedBox(width: 24),
                  _itemMenu(
                    assetsMenu[3],
                    textMenu[3],
                    backgroundColorMenu[3],
                    textColorMenu[3],
                    context,
                    0,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _itemMenu(
                    assetsMenu[4],
                    textMenu[4],
                    backgroundColorMenu[4],
                    textColorMenu[4],
                    context,
                    1,
                  ),
                  const SizedBox(width: 24),
                  _itemMenu(
                    assetsMenu[5],
                    textMenu[5],
                    backgroundColorMenu[5],
                    textColorMenu[5],
                    context,
                    0,
                  ),
                ],
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemMenu(
    String assets,
    String text,
    Color backgroundColor,
    Color textColor,
    BuildContext context,
    int index,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => index == 1
                  ? const InputCcrScreen()
                  : const InputTurbinScreen(),
            ),
          );
        },
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.all(18),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      assets,
                      width: 50,
                    ),
                  ),
                ),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
