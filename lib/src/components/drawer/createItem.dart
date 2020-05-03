import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function nextPage;

  ListTileItem({this.label, this.icon, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).primaryColor
        ),
      ),
      trailing: Icon(
        icon,
        size: 24,
        color: Theme.of(context).primaryColor
      ),
      onTap: nextPage,
    );
  }
}
