import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logsheet_mobile/common/app_theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  SizedBox(height: AppBar().preferredSize.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 26,
                          ),
                        ),
                      ),
                      Text(
                        "Edit Profile",
                        style: GoogleFonts.roboto(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 48,
                        height: 48,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 94,
                    height: 94,
                    decoration: const BoxDecoration(
                      color: AppTheme.primaryBlack,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 8,
                    child: Image(
                      image: AssetImage('assets/images/icon_pencil.png'),
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            //TODO : MOBILE PHONE
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 23,
                  ),
                  child: Text('Mobile Phone',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                const Spacer(),
                Text(
                  '0857123123123',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 7,
                  height: 11.34,
                  margin: const EdgeInsets.only(
                    left: 10.4,
                    right: 15.17,
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/icon_arrow.png'),
                    color: AppTheme.primaryBlack,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15.5,
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            const SizedBox(
              height: 14.5,
            ),
            //TODO : USER NAME
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 23,
                  ),
                  child: Text('Username',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                const Spacer(),
                Text(
                  'M. Ramdhan Syahputra',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 7,
                  height: 11.34,
                  margin: const EdgeInsets.only(
                    left: 10.4,
                    right: 15.17,
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/icon_arrow.png'),
                    color: AppTheme.primaryBlack,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15.5,
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            const SizedBox(
              height: 14.5,
            ),
            //TODO : EMAIL
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 23,
                  ),
                  child: Text('Email',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                const Spacer(),
                Text(
                  'ramdhanjr690@gmail.com',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 7,
                  height: 11.34,
                  margin: const EdgeInsets.only(
                    left: 10.4,
                    right: 15.17,
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/icon_arrow.png'),
                    color: AppTheme.primaryBlack,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15.5,
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
