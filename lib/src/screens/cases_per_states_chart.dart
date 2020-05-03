import 'package:com/src/components/charts/charts_pie.dart';
import 'package:com/src/components/drawer/main_drawer.dart';
import 'package:com/src/components/loadingCircular.dart';
import 'package:com/src/components/loadingError.dart';
import 'package:com/src/models/cases_per_region.dart';
import 'package:com/src/service/api.dart';
import 'package:flutter/material.dart';

class CasesPerStateChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Casos por região'),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: FutureBuilder(
        future: getDataBrazil(endpoint: 'PortalRegiao'),
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
                List<CasesPerRegion> dataCases =
                    cases.map((item) => CasesPerRegion.fromJson(item)).toList();
                return CreateChartsPie(dataCases);
              }
          }
        },
      ),
    );
  }
}
