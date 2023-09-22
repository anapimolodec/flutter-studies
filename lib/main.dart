import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID'),
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          elevation: 0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/whale.png'),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                ),
                Divider(
                  height: 80,
                  color: Colors.grey[800],
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Aiaru',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '8',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.grey),
                    SizedBox(width: 10),
                    Text('aiaru@betweenbits.io',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          letterSpacing: 1,
                        )),
                  ],
                )
              ],
            )));
  }
}
