import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_theme.dart';

class InputCcrScreen extends StatefulWidget {
  const InputCcrScreen({super.key});

  @override
  State<InputCcrScreen> createState() => _InputCcrScreenState();
}

class _InputCcrScreenState extends State<InputCcrScreen> {
  String dateNow = "1 - 1 - 1999";
  String timeNow = "";

  List<String> titleForm = [
    "Stand - bbm",
    "JKM - Mesin (Jam)",
    "Temp. Air - (°C)",
    "Tek. Oli - (bar)",
    "Arus (Ampere) - R",
    "Arus (Ampere) - S",
    "Arus (Ampere) - T",
    "Tegangan - (Volt)",
    "Beban - (kw)",
    "Freq - (Hz)",
    "KWH meter",
    "Cos φ",
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var date = DateTime.now();
      setState(() {
        dateNow = "${date.day} - ${date.month} - ${date.year}";
        timeNow = "${date.hour}.${date.minute}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppBar().preferredSize.height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
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
                  ),
                  Text(
                    "Input Form CCR - 1",
                    style: GoogleFonts.roboto(),
                  ),
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
                        Icons.info_outline,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              FittedBox(
                fit: BoxFit.contain,
                child: Center(
                  child: Text(
                    dateNow,
                    style: GoogleFonts.inter(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.darkYellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.brightYellow,
                  ),
                  child: Text(
                    timeNow,
                    style: GoogleFonts.inter(
                      color: AppTheme.darkYellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.maxFinite,
                height: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(height: 16),
              Text(
                "Mesin",
                style: GoogleFonts.roboto(fontSize: 12),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _itemForm(titleForm[0]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[1]),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _itemForm(titleForm[2]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[3]),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.maxFinite,
                height: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(height: 16),
              Text(
                "Generator",
                style: GoogleFonts.roboto(fontSize: 12),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _itemForm(titleForm[4]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[5]),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _itemForm(titleForm[6]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[7]),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _itemForm(titleForm[8]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[9]),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _itemForm(titleForm[10]),
                  const SizedBox(width: 24),
                  _itemForm(titleForm[11]),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppTheme.brightYellow,
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                content: Container(
                                  margin: EdgeInsets.only(
                                    top: 22,
                                  ),
                                  width: 278,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 155.29,
                                        height: 157.31,
                                        child: Image(
                                            image: AssetImage(
                                                'assets/images/thinking_people.png')),
                                      ),
                                      SizedBox(
                                        height: 14.69,
                                      ),
                                      Text(
                                        'Are you sure to submit?',
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 119,
                                            height: 38,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: AppTheme.secondaryGrey,
                                            ),
                                            child: Center(
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Cancel',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          AppTheme.primaryGrey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 119,
                                            height: 38,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: AppTheme.brightYellow,
                                            ),
                                            child: Center(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Okay',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          AppTheme.darkYellow),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppTheme.brightYellow,
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            color: AppTheme.darkYellow,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: Text(
                  //   "Submit",
                  //   style: GoogleFonts.inter(
                  //     color: AppTheme.darkYellow,
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemForm(String title) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(fontSize: 10),
          ),
          const SizedBox(height: 8),
          TextFormField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            cursorColor: AppTheme.darkYellow,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppTheme.darkYellow,
                ),
              ),
              hintStyle: const TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
