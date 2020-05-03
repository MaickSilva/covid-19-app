import 'package:com/src/components/loadingCircular.dart';
import 'package:com/src/components/loadingError.dart';
import 'package:com/src/components/tabs/contentCases.dart';
import 'package:com/src/models/cases_world.dart';
import 'package:com/src/service/api.dart';
import 'package:flutter/material.dart';

class WorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CasesWorld>(
      future: getCasesWorld(),
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
                totalCasesLabel: 'Total de casos no Mundo!',
                recoveredCasesLabel: 'Total de curados no Mundo!',
                hospitalizedCasesLabel: 'Total de hospitalizados no Mundo!!',
                deathCasesLabel: 'Total de mortes no Mundo!',
              );
            }
        }
      },
    );
  }
}
