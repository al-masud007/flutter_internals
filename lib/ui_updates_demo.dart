import 'package:flutter/material.dart';

class UiUpdatesDemo extends StatefulWidget {
  const UiUpdatesDemo({super.key});

  @override
  StatefulElement CreateElement() {
    print('Create Element Called');
    return super.createElement();
  }

  @override
  State<UiUpdatesDemo> createState() => _UiUpdatesDemoState();
}

class _UiUpdatesDemoState extends State<UiUpdatesDemo> {
  var _isUnderStood = false;
  @override
  Widget build(BuildContext context) {
    print('build method called');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Do you understand how Flutter updates UIs ?',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
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
        ),
      ),
    );
  }
}
