import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:rounded_modal/rounded_modal.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:swasthya_gram/controllers/checkup_controllers.dart';
import 'package:swasthya_gram/model/colors.dart';
import 'package:swasthya_gram/screens/chech_up/lhv_req.dart';
import 'package:swasthya_gram/screens/chech_up/measure_bpm.dart';
import 'package:swasthya_gram/screens/link_up/aaddhar_linkup.dart';

File file = File("your initial file");

class CheckUp extends StatefulWidget {
  const CheckUp({Key? key}) : super(key: key);

  @override
  _CheckUpState createState() => _CheckUpState();
}

class _CheckUpState extends State<CheckUp> {
  final CheckUpController checkUpController =
      Get.put(CheckUpController(aadhar.text));

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  TextEditingController gender = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      // ),
      color: Color.fromARGB(255, 244, 242, 242),
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "E-VCE",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   backgroundColor: Colors.transparent,
        //   iconTheme: IconThemeData(color: Colors.black),
        //   elevation: 0,
        // ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding:
                    EdgeInsets.only(top: 50, right: 15, left: 15, bottom: 70),
                child: Obx(() {
                  if (checkUpController.loading.value) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.pop(context);
                                }),
                                icon: Icon(Icons.arrow_back_ios)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Name",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                readOnly: true,
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: checkUpController.checkup.name,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Date",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                controller: dateInput,
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                readOnly: true,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                onTap: () async {},
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: checkUpController.checkup.dob
                                      .toString()
                                      .substring(0, 10),
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Gender",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                controller: gender,
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                readOnly: true,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                onTap: () {},
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.black,
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: checkUpController.checkup.gender,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 5),
                              child: Text(
                                "Height",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 47,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: TextField(
                                      cursorHeight: 18,
                                      cursorColor: AppColors.primaryColor,
                                      style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Color(0xFF1976D2),
                                            width: 2,
                                          ),
                                        ),
                                        hintStyle: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                        hintText:
                                            (checkUpController.checkup.height /
                                                        12)
                                                    .floor()
                                                    .toString() +
                                                " Feet",
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 47,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: TextField(
                                      cursorHeight: 18,
                                      cursorColor: AppColors.primaryColor,
                                      style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Color(0xFF1976D2),
                                            width: 2,
                                          ),
                                        ),
                                        hintStyle: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                        hintText:
                                            (checkUpController.checkup.height %
                                                        12)
                                                    .toString() +
                                                ' Inches',
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Weight",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: checkUpController.checkup.weight
                                          .toString() +
                                      ' Kilograms',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Patient Problems(Tags)",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Enter Patient Problems(Tags)',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Side Effects",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Side Effects',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Patients condition",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                maxLines: 5,
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Enter Patients condition briefly',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Blood Preasure",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Enter Blood Preasure',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.favorite_rounded),
                            label: Text("Measure BPM"),
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HeartBPM()));
                            }),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                "Heart Rate",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextField(
                                cursorHeight: 18,
                                cursorColor: AppColors.primaryColor,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1976D2),
                                      width: 2,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Enter Heart Rate',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Is LHV Assistance Required?",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), //SizedBox
                            /** Checkbox Widget **/
                            Checkbox(
                              checkColor: Colors.white,
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ],
                        ), //Text

                        const SizedBox(
                          height: 30,
                        ),
                      ]);
                }),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:
            // ),
          ],
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey),
            ),
          ),
          child: FlatButton(
            onPressed: () {
              if (value) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LHVReq()));
              } else {
                Navigator.of(context).pop();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              margin: EdgeInsets.only(left: 0, right: 0, bottom: 10, top: 5),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 50,
              child: Center(
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
