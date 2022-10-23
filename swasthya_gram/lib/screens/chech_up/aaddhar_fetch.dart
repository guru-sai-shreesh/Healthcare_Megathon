import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:intl/intl.dart';

import 'package:rounded_modal/rounded_modal.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:swasthya_gram/model/colors.dart';
import 'package:swasthya_gram/screens/chech_up/chech_up.dart';
import 'package:swasthya_gram/screens/chech_up/measure_bpm.dart';

File file = File("your initial file");

class AadhaarFetch extends StatefulWidget {
  const AadhaarFetch({Key? key}) : super(key: key);

  @override
  _AadhaarFetchState createState() => _AadhaarFetchState();
}

class _AadhaarFetchState extends State<AadhaarFetch> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  TextEditingController gender = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HeartBPM()));
          },
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 50, right: 15, left: 15, bottom: 70),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    "Aadhaar number",
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
                      hintText: 'Enter Aadhaar number',
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
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
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
                      hintText: 'Enter name',
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
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CheckUp()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.cardcolor,
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
          ]),
        ),
      ),
    );
  }
}
