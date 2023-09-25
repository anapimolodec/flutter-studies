import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
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
          onPressed: () {},
          child: Text('hello'),
        ));
  }
}
