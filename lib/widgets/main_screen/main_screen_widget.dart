import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _SelectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Новости',
    ),
    Text(
      'Фильмы',
    ),
    Text(
      'Сериалы',
    ),
  ];

  void onSelectedTab(int index) {
    if (_SelectedTab == index) return;
    setState(() {
      _SelectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: Center(child: _widgetOptions[_SelectedTab]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Сериалы',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
