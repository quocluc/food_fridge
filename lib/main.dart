import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const MaterialColor white = const MaterialColor(
    0xFFFFFFFF,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(0xFFFFFFFF),
      600: const Color(0xFFFFFFFF),
      700: const Color(0xFFFFFFFF),
      800: const Color(0xFFFFFFFF),
      900: const Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Setting',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search),
                  Icon(Icons.notifications),
                ],
              ),
              Expanded(
                child: TabBarDemo(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text('Pantry'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('Recipes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Shopping list'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(30, 202, 120, 100),
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black26,
      ),
    );
  }
}

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  List<Tab> _listTab = <Tab>[
    Tab(
      child: Row(
        children: <Widget>[
          Text('All'),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white70)),
            child: Text(
              '9',
              style: TextStyle(backgroundColor: Colors.white10),
            ),
          ),
        ],
      ),
    ),
    Tab(icon: Icon(Icons.directions_transit)),
    Tab(icon: Icon(Icons.directions_bike)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[Icon(Icons.settings)],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  children: <Widget>[
                    Text('All'),
                    SizedBox(width: 5),
                    Container(
                      height: 18,
                      width: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Text(
                        '9',
                        style: TextStyle(
                            backgroundColor: Colors.white10, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.inbox),
                    SizedBox(width: 5),
                    Text('Fridge'),
                    SizedBox(width: 5),
                    Container(
                      height: 18,
                      width: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Text(
                        '10',
                        style: TextStyle(
                            backgroundColor: Colors.white10, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.ac_unit),
                    SizedBox(width: 5),
                    Text('Freezer'),
                    SizedBox(width: 5),
                    Container(
                      height: 18,
                      width: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Text(
                        '3',
                        style: TextStyle(
                            backgroundColor: Colors.white10, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black87,
          ),
          title: Text('Pantry'),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.restaurant_menu),
                      SizedBox(width: 50),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Beef rib-eye steak'),
                          Text('Exporing in 2 days!'),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('300 g'),
                          Text('Fridge'),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
              ],
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
