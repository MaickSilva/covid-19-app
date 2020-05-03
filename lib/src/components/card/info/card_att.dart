import 'package:flutter/material.dart';

class MainCardDateAtt extends StatelessWidget {
  final String date;
  MainCardDateAtt(this.date);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'Última Atualização: $date',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        trailing: Icon(
          Icons.date_range,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
