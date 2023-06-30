import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchMap extends StatefulWidget {
  @override
  _ScratchMapState createState() => _ScratchMapState();
}

class _ScratchMapState extends State<ScratchMap> {
  bool _isScratched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scratch Map'),
      ),
      body: Center(
        child: Scratcher(
          brushSize: 30,
          threshold: 50,
          color: Colors.grey,
          onChange: (value) {
            setState(() {
              _isScratched = value as bool;
            });
          },
          child: _isScratched
              ? Image.asset('assets/images/complete_map.png')
              : Image.asset('assets/images/empty_map.png'),
        ),
      ),
    );
  }
}
