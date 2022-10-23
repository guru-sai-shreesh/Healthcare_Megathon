import 'package:flutter/material.dart';
import 'package:swasthya_gram/screens/chech_up/aaddhar_fetch.dart';
import 'package:swasthya_gram/screens/chech_up/chech_up.dart';
import 'package:swasthya_gram/screens/dashboard/dashboard.dart';
import 'package:swasthya_gram/screens/homescreen/homescreen.dart';
import 'package:swasthya_gram/screens/link_up/aaddhar_linkup.dart';
import 'package:swasthya_gram/screens/link_up/link_up.dart';
import 'package:swasthya_gram/screens/profile/profile.dart';
import 'package:swasthya_gram/screens/sc_funds/sc_funds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      Dashboard(),
      AadhaarFetch(),
      AadhaarLinkUp(),
      SCFunds(),
      Profile()
    ];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
        color: Colors.white,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color.fromARGB(255, 29, 88, 32),
              currentIndex: currentIndex,
              onTap: (index) => setState(() {
                    currentIndex = index;
                  }),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "Dashboard",
                    backgroundColor: Colors.grey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.schedule),
                    label: "Checkup",
                    backgroundColor: Colors.grey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark),
                    label: "LinkUp",
                    backgroundColor: Colors.grey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_run),
                    label: "SCFunds",
                    backgroundColor: Colors.grey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: "Profile",
                    backgroundColor: Colors.grey),
              ]),
          body: IndexedStack(
            children: screens,
            index: currentIndex,
          ),
        ));
  }
}
