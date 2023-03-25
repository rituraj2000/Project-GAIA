import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_gaiagsc/Screens/Home/Activity/add_activity_page.dart';
import 'package:project_gaiagsc/Screens/Home/feed_page.dart';
import 'package:project_gaiagsc/constants/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Project OneEarth'),
      routes: {
        '/add-activity': (ctx) => AddActivityPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: dark_green_primary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: FeedPage(),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: green_primary,
        style: TabStyle.fixed,
        items: const [
          TabItem(
              icon: Icon(
            Icons.home,
            color: Colors.white,
          )),
          TabItem(
              icon: Icon(
            Icons.add_circle_rounded,
            size: 42,
            color: Colors.white,
          )),
          TabItem(icon: Icon(Icons.abc)),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              // Navigator.pushNamed(context, 'add-activity');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => AddActivityPage()),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
