import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: BossPage(),
        ),
      ),
    );

class BossPage extends StatefulWidget {
  @override
  State<BossPage> createState() => _BossPageState();
}

class _BossPageState extends State<BossPage> {
  int no = 1;
  onBPressed() {
    if (no != 5) {
      setState(() {
        no++;
      });
    } else {
      setState(() {
        no = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: FlatButton(
            child: Image.asset('images/ball$no.png'),
            onPressed: () => onBPressed(),
          ),
        ),
      ),
    );
  }
}
