import 'package:com/src/components/charts/charts.dart';
import 'package:com/src/components/loadingCircular.dart';
import 'package:com/src/components/loadingError.dart';
import 'package:com/src/models/cases_per_day_chart.dart';
import 'package:com/src/service/api.dart';
import 'package:flutter/material.dart';


class ChartCasesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDataBrazil(endpoint: 'PortalAcumulo'),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return LoadingCircular();
          default:
            if (snapshot.hasError) {
              return LoadingError();
            } else {
               var cases = snapshot.data['results'] as List;
                List<ChartCasesDay> dataCases = cases.map((item) => ChartCasesDay.fromJson(item))
                  .toList();
              return CreateChart(dataCases);
            }
        }
      },
    );
  }
}