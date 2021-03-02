import 'package:flutter/material.dart';

import 'dummy_data.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _text(),
        ),
      ),
    );
  }

  Text _text() {
    return Text(
      DummyData.instance.loremIpsum,
      style: TextStyle(
        letterSpacing: 1.2,
        fontSize: 16,
        wordSpacing: .7,
      ),
    );
  }
}
