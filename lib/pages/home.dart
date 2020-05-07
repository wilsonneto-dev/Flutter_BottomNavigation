import 'package:flutter/material.dart';
import 'package:navapp/pages/example.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 1;
  final _pagesOptions = [
    ExamplePage("Home", Color.fromRGBO(255, 0, 0, 1)),
    ExamplePage("Favs", Color.fromRGBO(0, 255, 0, 1)),
    ExamplePage("Star", Color.fromRGBO(255, 0, 255, 1)),
    ExamplePage("Config", Color.fromRGBO(255, 124, 0, 1))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pagesOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Fav")),
          BottomNavigationBarItem(icon: Icon(Icons.star), title: Text("Star")),
          BottomNavigationBarItem(icon: Icon(Icons.shop), title: Text("Config"))
        ],
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black12,
      ),
    );
  }
}
