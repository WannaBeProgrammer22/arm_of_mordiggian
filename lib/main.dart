import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ArmletPage(),
      ),
    );

class ArmletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text('Armlet Of Mordiggian'),
      ),
      body: Armlet(),
    );
  }
}

class Armlet extends StatefulWidget {
  @override
  _ArmletState createState() => _ArmletState();
}

class _ArmletState extends State<Armlet> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print('You clicked me. But im still useless');
        },
        child: CircleAvatar(
          radius: 150.0,
          backgroundImage: AssetImage('images/aom_inactive.png'),
        ),
      ),
    );
  }
}
