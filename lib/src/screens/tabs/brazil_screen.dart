import 'package:com/src/components/loadingCircular.dart';
import 'package:com/src/components/loadingError.dart';
import 'package:com/src/components/tabs/contentCases.dart';
import 'package:com/src/service/api.dart';
import 'package:flutter/material.dart';

class BrazilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCasesBrazil(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return LoadingCircular();
          default:
            if (snapshot.hasError) {
              return LoadingError();
            } else {
              return RenderCardList(
                snapshot: snapshot,
                totalCasesLabel: 'Total de casos no Brasil!',
                recoveredCasesLabel: 'Total de Curados no Brasil!',
                hospitalizedCasesLabel:
                    'Total de hospitalizados no Brasil!',
                deathCasesLabel: 'Total de mortes no Brasil!',
              );
            }
        }
      },
    );
  }
}
