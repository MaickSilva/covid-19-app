import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainCardItem extends StatelessWidget {
  final String label;
  final double data;
  final Color color;

  MainCardItem(this.label, this.data, this.color);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###", "pt_BR");

    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Card(
        color: color,
        elevation: 5.0,
        borderOnForeground: true,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              Text(
                formatter.format(data),
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
