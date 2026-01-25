import 'package:flutter/material.dart';

class Fixt extends StatefulWidget {
  const Fixt({super.key});

  @override
  State<Fixt> createState() => _FixtState();
}

class _FixtState extends State<Fixt> {
  var _isUnderStood = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('build method called');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderStood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderStood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderStood) const Text('Awsome!'),
      ],
    );
  }
}
