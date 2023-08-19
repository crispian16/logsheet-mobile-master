import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../logsheet/screen/logsheet_screen.dart';

class ChosingPLTU extends StatelessWidget {
  const ChosingPLTU({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        leadingWidth: 72,
        backgroundColor: const Color(0xffffffff),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 26, top: 27),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD9D9D9), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff646464),
            ),
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 27),
          child: Text(
            'Chose PLTU',
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xff646464),
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 26, top: 27),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD9D9D9), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              CommunityMaterialIcons.magnify,
              color: Color(0xff646464),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffffffff),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogsheetScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 26, right: 26),
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 7, right: 18, left: 13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFAF9E4),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.25),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 72,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xffF2F2F2),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/rectangle14.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            const SizedBox(width: 23),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PLTU 1 Jawa Barat',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: const Color(0xff928A00),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  '3 x 330 MW',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    color: const Color(0xff646464),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          CommunityMaterialIcons.dots_horizontal,
                          color: Color(0xff928A00),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            );
          },
        ),
      ),
    );
  }
}
