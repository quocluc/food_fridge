import 'package:flutter/material.dart';
import 'package:foodfridge/detail.dart';

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
      theme: ThemeData(primarySwatch: white, fontFamily: 'BalooTammudu'),
      routes: {
        '/': (context) => MyHomePage(),
        '/detail': (context) => Detail(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

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
                child: TabBarPantry(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                iconSize: 27.0,
                icon: ImageIcon(
                  new AssetImage("assets/icons/pantry.png"),
                  color: _selectedIndex == 0 ? Colors.green : null,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                iconSize: 27.0,
                icon: ImageIcon(
                  new AssetImage("assets/icons/recipes.png"),
                  color: _selectedIndex == 1 ? Colors.green : null,
                  size: 30,
                ),
              ),
              //to leave space in between the bottom app bar items and below the FAB
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                iconSize: 27.0,
                icon: ImageIcon(
                  new AssetImage("assets/icons/shop.png"),
                  color: _selectedIndex == 2 ? Colors.green : null,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
    );
  }
}

class TabBarPantry extends StatefulWidget {
  @override
  _TabBarPantryState createState() => _TabBarPantryState();
}

class _TabBarPantryState extends State<TabBarPantry> {
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
          title: Text('Pantry'),
          actions: <Widget>[Icon(Icons.settings)],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('All'),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 19,
                      width: 25,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Fridge'),
                    ),
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
            unselectedLabelColor: Colors.black54,
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              padding: EdgeInsets.all(10),
              itemCount: 30,
              separatorBuilder: (context, _) {
                return SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 12.0,
                          spreadRadius: 5.0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/meat.png',
                          width: 40,
                        ),
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Beef rib-eye steak',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Exporing in 2 days!',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('300 g'),
                            Text(
                              'Fridge',
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        backgroundColor: Colors.grey.withOpacity(0.15),
      ),
    );
  }
}
