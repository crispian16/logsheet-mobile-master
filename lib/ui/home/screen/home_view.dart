import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logsheet_mobile/common/app_theme.dart';
import 'package:logsheet_mobile/ui/home/controller/home_contoller.dart';
import 'package:logsheet_mobile/ui/home/screen/navbar.dart';
import 'package:get/get.dart';

import '../../widgets/welcome_dialog_widget.dart';

class HomeView extends StatelessWidget {
  final HomeC homeCon = Get.put(HomeC());

  HomeView() {
    homeCon.scrollController.addListener(() {
      if (homeCon.scrollController.offset > 0) {
        homeCon.isVisible.value = true;
      } else {
        homeCon.isVisible.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavBar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            controller: homeCon.scrollController,
            child: Column(
              children: [
                AppBar(
                  toolbarHeight: 72,
                  leadingWidth: 72,
                  leading: Container(
                    margin: EdgeInsets.only(
                      left: 26,
                      top: 27,
                    ),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffD9D9D9), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        top: 17,
                        bottom: 17,
                        right: 12,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/vector.png'),
                        ),
                      ),
                      child: Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  backgroundColor: AppTheme.brightYellow,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 27,
                    top: 37,
                    bottom: 45,
                    right: 35,
                  ),
                  width: double.infinity,
                  color: AppTheme.brightYellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Morning,",
                        style: GoogleFonts.inter(
                          fontSize: 40,
                          color: const Color(0xff928A00),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Have you finished your log today?",
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          color: const Color(0xff646464),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(height: 32),
                      Container(
                        padding: EdgeInsets.only(
                            left: 15, right: 10, top: 13, bottom: 11),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: AppTheme.darkYellow,
                                      size: 24,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Current PLTU location',
                                      style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        color: const Color(0xff928A00),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 22,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xffD9D9D9),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.edit_rounded,
                                    color: Color(0xff000000),
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 7),
                            Padding(
                              padding: EdgeInsets.only(left: 28),
                              child: Text(
                                'PLTU 1 Jawa Barat',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: const Color(0xff646464),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28,
                              ),
                              child: Text(
                                '3 x 250 MW',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: const Color(0xff646464),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 27, top: 25, right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My logbook',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: const Color(0xff646464),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                        ),
                      ),
                      const Icon(Icons.more_horiz),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 27, top: 22, right: 35),
                  child: Column(
                    children: [
                      for (int i = 0; i < 10; i++) MyLogbookList(id: 0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: homeCon.isVisible.value,
                        child: FloatingActionButton(
                          onPressed: () {
                            homeCon.scrollController.animateTo(
                              0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Icon(Icons.arrow_upward_rounded),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                    extendedPadding: const EdgeInsets.only(
                        left: 25, right: 24, top: 15, bottom: 15),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => const WelcomeDialogWidget());
                    },
                    icon: const Icon(
                      CommunityMaterialIcons.pencil_outline,
                      color: Color(0xff928A00),
                      size: 24,
                    ),
                    label: Text(
                      'Logsheet',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: const Color(0xff928A00),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: const Color(0xffFAF9E4),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      ),
    );
  }
}

class MyLogbookList extends StatelessWidget {
  int? id;
  MyLogbookList({required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  CommunityMaterialIcons.circle,
                  color: id == 0 ? Color(0xff928A00) : Color(0xff15A8E1),
                  size: 13,
                ),
                SizedBox(width: 7),
                Text(
                  id == 0 ? 'CCR - 1' : 'Turbin - 1',
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    color: const Color(0xff646464),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            Text(
              'Today 13.10',
              style: GoogleFonts.roboto(
                fontSize: 10,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w400,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
        SizedBox(height: 7),
        Container(
          padding: EdgeInsets.only(left: 11, top: 7, bottom: 7, right: 11),
          decoration: BoxDecoration(
            color: const Color(0xffF1F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 24, right: 23, top: 9, bottom: 8),
                    decoration: BoxDecoration(
                      color: id == 0 ? Color(0xffFAF9E4) : Color(0xffDEF6FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '13.10',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        color: id == 0 ? Color(0xff928A00) : Color(0xff15A8E1),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  SizedBox(width: 18),
                  Text(
                    'PLTU 2 Jawa Barat',
                    style: GoogleFonts.roboto(
                      fontSize: 10,
                      color: const Color(0xff646464),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 29,
                height: 28,
                decoration: BoxDecoration(
                  color: id == 0 ? Color(0xffFAF9E4) : Color(0xffDEF6FF),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14),
      ],
    );
  }
}
