import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.add_shopping_cart),
          Icon(Icons.delete_forever),
          Icon(Icons.edit),
        ],
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Beef rib-eye steak',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/meat.png',
                      width: 40,
                    ),
                    Text(
                      'Meats',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' in '),
                    Text(
                      'Fridge',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text('In the pantry'),
                          Text(
                            '4 days',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Expiting',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            'in 2 days!',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text('Amount'),
                          Text(
                            '300 g',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Let's cook it!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Pick the best pairing',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/beetroot.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Beetroot'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/broccolli.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Broccolli'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/potato.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Potato'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/beetroot.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Beetroot'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/broccolli.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Broccolli'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/foods/potato.png',
                                height: 80,
                                width: 80,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Text('Potato'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Or cook with what you have',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
