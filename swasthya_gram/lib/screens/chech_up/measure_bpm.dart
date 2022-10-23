import 'package:flutter/material.dart';
import 'package:heart_bpm/chart.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:intl/intl.dart';

import 'package:rounded_modal/rounded_modal.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:swasthya_gram/model/colors.dart';
import 'package:heart_bpm/heart_bpm.dart';

File file = File("your initial file");

class HeartBPM extends StatefulWidget {
  const HeartBPM({Key? key}) : super(key: key);

  @override
  _HeartBPMState createState() => _HeartBPMState();
}

class _HeartBPMState extends State<HeartBPM> {
  @override
  void initState() {
    super.initState();
  }

  List<SensorValue> data = [];
  List<SensorValue> bpmValues = [];
  //  Widget chart = BPMChart(data);

  bool isBPMEnabled = false;
  Widget? dialog;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.black),
          title: Text(
            'Heart BPM Demo',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                isBPMEnabled
                    ? dialog = HeartBPMDialog(
                        context: context,
                        onRawData: (value) {
                          setState(() {
                            if (data.length >= 100) data.removeAt(0);
                            data.add(value);
                          });
                          // chart = BPMChart(data);
                        },
                        onBPM: (value) => setState(() {
                          if (bpmValues.length >= 100) bpmValues.removeAt(0);
                          bpmValues.add(SensorValue(
                              value: value.toDouble(), time: DateTime.now()));
                        }),
                        // sampleDelay: 1000 ~/ 20,
                        // child: Container(
                        //   height: 50,
                        //   width: 100,
                        //   child: BPMChart(data),
                        // ),
                      )
                    : SizedBox(),
                isBPMEnabled && data.isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(border: Border.all()),
                        height: 180,
                        child: BPMChart(data),
                      )
                    : SizedBox(),
                isBPMEnabled && bpmValues.isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(border: Border.all()),
                        constraints: BoxConstraints.expand(height: 180),
                        child: BPMChart(bpmValues),
                      )
                    : SizedBox(),
                Center(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.favorite_rounded),
                    label:
                        Text(isBPMEnabled ? "Stop measurement" : "Measure BPM"),
                    onPressed: () => setState(() {
                      if (isBPMEnabled) {
                        isBPMEnabled = false;
                        // dialog.
                      } else
                        isBPMEnabled = true;
                    }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
