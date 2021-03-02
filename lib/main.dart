import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(ScrollableEffect());
}

class ScrollableEffect extends StatelessWidget {
  const ScrollableEffect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}