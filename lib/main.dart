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

  void setStatus() {
    this.isActive = !this.isActive;
  }

  String getStatus() {
    return (this.isActive) ? 'aom_active.png' : 'aom_inactive.png';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print('You clicked me. But im still useless');
          setState(() {
            this.setStatus();
          });
        },
        child: CircleAvatar(
          radius: 150.0,
          backgroundImage: AssetImage(
            'images/' + this.getStatus(),
          ),
        ),
      ),
    );
  }
}
