import 'package:flutter/material.dart';

class LoadingError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Erro ao Carregar Dados :(",
        style: TextStyle(
          color: Colors.red,
          fontSize: 18.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
