import 'package:flutter/material.dart';
import 'package:scrollable_effect/reusable_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ExpansionTile> _content;
  List<ScrollController> _scrollController;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = List<ScrollController>();
    _content = List<ExpansionTile>();

    for (var i = 0; i < 5; i++) {
      _scrollController.add(ScrollController());
    }

    for (var i = 0; i < 5; i++) {
      _content.add(
        ExpansionTile(
          title: Text("${i + 1}. Lorem Ipsum"),
          children: [_scrollBar(i)],
        ),
      );
    }
  }

  Scrollbar _scrollBar(int i) {
    return Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController.length > 0 ? _scrollController[i] : ScrollController(),
      child: SingleChildScrollView(
        controller: _scrollController.length > 0 ? _scrollController[i] : ScrollController(),
        scrollDirection: Axis.horizontal,
        child: const ContentWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: _appbarText(),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appbar,
      body: Container(
        padding: const EdgeInsets.all(24),
        child: ListView(children: [..._content]),
      ),
    );
  }

  Text _appbarText() {
    return const Text(
      "Scrollable Effect Example",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.5,
      ),
    );
  }
}
