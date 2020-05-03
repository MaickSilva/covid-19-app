import 'package:com/src/components/drawer/createItem.dart';
import 'package:com/src/utils/main_routes.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            
            alignment: Alignment.bottomCenter,
            child: Text(
              'Covid 19',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          ListTileItem(
            label: 'Home',
            icon: Icons.keyboard_arrow_right,
            nextPage: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
          ),
          Divider(),
          ListTileItem(
            label: 'Casos por estado',
            icon: Icons.keyboard_arrow_right,
            nextPage: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(AppRoutes.CASES_PER_STATE_BRAZIL);
            },
          ),
          Divider(),
          ListTileItem(
            label: 'Casos por região',
            icon: Icons.keyboard_arrow_right,
            nextPage: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(AppRoutes.CASES_PER_STATE_CHARTS);
            },
          ),
        ],
      ),
    );
  }
}
