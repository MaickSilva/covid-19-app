import 'package:com/src/components/drawer/main_drawer.dart';
import 'package:com/src/screens/tabs/brazil_screen.dart';
import 'package:com/src/screens/tabs/cases_per_day_chart.dart';
import 'package:com/src/screens/tabs/world_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Casos no Brasil', 'screen': BrazilScreen()},
    {'title': 'Casos no Mundo', 'screen' : WorldScreen()},
    {'title': 'Casos por dia no brasil', 'screen' : ChartCasesScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          _screens[_selectedScreenIndex]['title'],
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Brasil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            title: Text('Mundo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Gráfico Brasil'),
          ),
        ]
      ),
    );
  }
}