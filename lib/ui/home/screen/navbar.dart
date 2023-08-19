import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logsheet_mobile/common/app_theme.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../../profile/edit_profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'M. Ramdhan Syahputra',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: const Color(0xff646464),
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
              ),
            ),
            accountEmail: Text(
              'ramdhanjr690@gmail.com',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: const Color(0xff646464),
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
              ),
            ),
            decoration: const BoxDecoration(color: AppTheme.brightYellow),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 20, right: 20),
            leading: const Icon(CommunityMaterialIcons.earth),
            title: Text(
              'Language',
              style: GoogleFonts.roboto(
                fontSize: 12,
                color: const Color(0xff646464),
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 0,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: const Color(0xffBCBEC0),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(CommunityMaterialIcons.chevron_down),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
            },
            child: ListTile(
              contentPadding: const EdgeInsets.only(left: 20, right: 20),
              leading: const Icon(Icons.person),
              title: Text(
                'Edit Profile',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: const Color(0xff646464),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                ),
              ),
              horizontalTitleGap: 0,
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 19, right: 19, bottom: 31),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(top: 18, bottom: 17),
                backgroundColor: const Color(0xffFFE8E9),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Logout',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: const Color(0xffA60006),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Powered by:',
              style: GoogleFonts.roboto(
                fontSize: 12,
                color: const Color(0xff646464),
                fontWeight: FontWeight.w400,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 10, right: 20, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/pln_tarakan_logo.jpeg',
                  width: 80,
                  height: 37,
                ),
                Text(
                  'V 1.0',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: const Color(0xffD9D9D9),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
