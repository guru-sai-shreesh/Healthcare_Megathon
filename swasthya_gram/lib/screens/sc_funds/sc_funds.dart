import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swasthya_gram/model/colors.dart';

class SCFunds extends StatefulWidget {
  const SCFunds({Key? key}) : super(key: key);

  @override
  _SCFundsState createState() => _SCFundsState();
}

class _SCFundsState extends State<SCFunds> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 244, 242, 242),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "SUB-CENTRE FUNDS ALLOCATION",
              style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: Container(
            child: Card(
              margin: EdgeInsets.all(10),
              color: AppColors.cardcolor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 0, right: 0),
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HOUSE RENT: 3000/-",
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "SUBSIDARY : 3000/-",
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "VACCINES : POLIO, ETC",
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
