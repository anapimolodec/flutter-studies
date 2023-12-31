import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context).settings.arguments;
    data = data.isNotEmpty
        ? data
        : (ModalRoute.of(context)?.settings.arguments
                as Map<dynamic, dynamic>?) ??
            {};

    //set background
    String bgImage = data['isDay'] ? 'day.png' : 'night.png';

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () async {
                dynamic result =
                    await Navigator.pushNamed(context, '/location');
                setState(() {
                  data = {
                    'location': result['location'],
                    'flag': result['flag'],
                    'time': result['time'],
                    'isDay': result['isDay'],
                    'list': result['list'],
                  };
                });
              },
              icon: Icon(Icons.edit_location, color: Colors.grey[300]),
              label: Text('Edit location',
                  style: TextStyle(color: Colors.grey[300])),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(data['location'],
                    style: const TextStyle(
                        fontSize: 28, letterSpacing: 2, color: Colors.white))
              ],
            ),
            const SizedBox(height: 20),
            Text(data['time'],
                style: const TextStyle(fontSize: 66, color: Colors.white))
          ],
        ),
      ),
    ));
  }
}
