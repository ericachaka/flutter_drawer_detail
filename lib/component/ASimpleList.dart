import 'package:flutter/material.dart';
import 'package:flutter_drawer/pages/MyHomePageDetail.dart';

///
/// simple list clas for rendering a list with basic
/// list items
///
class ASimpleList extends StatefulWidget {
  @override
  _ASimpleListState createState() => new _ASimpleListState();
}

class _ASimpleListState extends State<ASimpleList> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // tell tell the list to expand to fill rest of space
    return Expanded(
      // build the list
      child: new ListView.builder(
          padding: const EdgeInsets.all(10.0),
          // Let the ListView know how many items it needs to build
          itemCount: items.length,
          // build the list
          itemBuilder: (BuildContext _context, int index) {
            final item = items[index];
            return _buildRow(item);
          }),
    );
  }

  Widget _buildRow(String pair) {
    return new ListTile(
      onTap: () {
        // _showDialog(pair);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePageDetail(
                  title: "Detail Page",
                  listData: pair,
                )));
      },
      title: new Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  final items = new List<String>.generate(
      20, (int index) => 'List Item ' + '$index'); // [0, 1, 4]

}
