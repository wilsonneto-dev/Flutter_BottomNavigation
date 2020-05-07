import 'package:flutter/cupertino.dart';

class ExamplePage extends StatelessWidget {
  final Color _color;
  final String _title;
  ExamplePage(this._title, this._color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.all(10),
                color: this._color,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(this._title),
                        ))
                  ],
                ))),
      ],
    );
  }
}
