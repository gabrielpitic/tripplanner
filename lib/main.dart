import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Trip Planner',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 25,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 5
              ),
              child: Text("Revelion",
              style: TextStyle(
                fontSize: 25
              )
              ),
            ),
            Row(
              children: [
                Container(
                  child: Text("29.12 - 02.01",
                            style: TextStyle(fontSize: 18)
                ),
                ),
                Container(
                  child: Text("  ~  ",
                style: TextStyle(
                  fontSize: 15
                ),
                )
                ),
                Container(
                  child: Text("12 membri",
                style: TextStyle(
                  fontSize: 18
                ),
                )
                )
              ],
            )
          ],
          ),
        toolbarHeight: 150,
        backgroundColor: Color(0xFFABC270),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
            ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
            )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
        ),
      ),
      body: Container(
        child: Dashboard(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFB84C), 
        onPressed: () {  },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFABC270),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
          ],
          selectedItemColor: Colors.white,
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.grey
              ),
            ),
          ],
        ),
    );
  }
}