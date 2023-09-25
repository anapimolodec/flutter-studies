import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;
  void getData() async {
    //simulate network request to get username
    String user = await Future.delayed(const Duration(seconds: 3), () {
      return 'yoshi';
    });

    //simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vegan Yoshi';
    });

    print('$user and its bio: $bio');
  }

  @override
  void initState() {
    super.initState();
    print('init state function run');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text('Location'),
          backgroundColor: Colors.blue.shade800,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
          child: Text('counter is $count'),
        ));
  }
}
