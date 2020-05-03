import 'package:flutter/material.dart';

class LoadingCircular extends StatelessWidget {
  // final Color color;
  // LoadingCircular(this.color);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        // backgroundColor: color,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
