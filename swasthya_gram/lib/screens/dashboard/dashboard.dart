import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swasthya_gram/model/colors.dart';
import 'package:swasthya_gram/screens/widget/circular_progress_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

int count = 0;

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // classifier_timer = Timer.periodic(Duration(seconds: 2), (timer) async {
    //   _fetchData();
    // }
    // );
  }

  int Wsteps = 10;
  _fetchData() async {
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 244, 242, 242),
      child: FutureBuilder(
          future: _fetchData(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                body: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                      floating: false,
                      automaticallyImplyLeading: false,
                      backgroundColor: Color.fromARGB(255, 244, 242, 242),
                      elevation: 0,
                      pinned: true,
                      expandedHeight: 70,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: false,
                        expandedTitleScale: 1.3,
                        titlePadding: EdgeInsets.only(left: 15, bottom: 15),
                        title: Text(
                          "Dashboard",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_outlined),
                            color: Colors.black,
                          ),
                        ),
                        // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 0, right: 15, bottom: 5),
                            child: Text(
                              "VILLAGE HEALTH STATS",
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // color: AppColors.badgecolor,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            child: Center(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: RadialProgress(
                                      height: 160.0,
                                      width: 160.0,
                                      progress: (87).toDouble() / 100,
                                      steps_left: 87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 10, right: 15),
                            child: Text(
                              "IMMUNIZATION STATS",
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            color: AppColors.cardcolor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15, top: 10, right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Vaccinations completed vs Target",
                                          style: GoogleFonts.openSans(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Show All",
                                          style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              color: Colors.white60,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 15, top: 10),
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: ((453).toDouble()) / 1000,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 15, top: 0, right: 15),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.openSans(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 453.toString(),
                                                      style:
                                                          GoogleFonts.openSans(
                                                              fontSize: 34,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' of 1000 Vaccinations',
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 0, right: 15),
                                            child: Text(
                                              'Last 1 Month',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  color: Colors.white60,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Icon(
                                          Icons.run_circle,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 10, right: 15),
                            child: Text(
                              "HEALTH CHECK-UP STATS",
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            color: AppColors.cardcolor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15, top: 10, right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Home visits completed vs Target",
                                          style: GoogleFonts.openSans(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Show All",
                                          style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              color: Colors.white60,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 15, top: 10),
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: ((32).toDouble()) / 57,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 15, top: 0, right: 15),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.openSans(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 32.toString(),
                                                      style:
                                                          GoogleFonts.openSans(
                                                              fontSize: 34,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    TextSpan(
                                                      text: ' of 57 Visits',
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 0, right: 15),
                                            child: Text(
                                              'Last 1 Month',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  color: Colors.white60,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Icon(
                                          Icons.run_circle,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: AppColors.cardcolor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15, top: 10, right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Health awareness tasks",
                                          style: GoogleFonts.openSans(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Show All",
                                          style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              color: Colors.white60,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 15, top: 10),
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: ((453).toDouble()) / 1000,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 15, top: 0, right: 15),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.openSans(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 19.toString(),
                                                      style:
                                                          GoogleFonts.openSans(
                                                              fontSize: 34,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    TextSpan(
                                                      text: ' of 25 Tasks Done',
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 0, right: 15),
                                            child: Text(
                                              'Last 1 Month',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  color: Colors.white60,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Icon(
                                          Icons.run_circle,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
