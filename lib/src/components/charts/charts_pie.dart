import 'package:com/src/models/cases_per_region.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CreateChartsPie extends StatelessWidget {
  final List<CasesPerRegion> dataCases;

  CreateChartsPie(this.dataCases);

  @override
  Widget build(BuildContext context) {
    var series = [
      charts.Series(
        domainFn: (CasesPerRegion clickData, _) => clickData.name,
        measureFn: (CasesPerRegion clickData, _) => clickData.qtd,
        colorFn: (CasesPerRegion clickData, _) =>
            charts.Color.fromHex(code: clickData.barColor),
        id: 'Casos Confirmados',
        data: dataCases,
        labelAccessorFn: (CasesPerRegion casos, _) => '${casos.percent}',
      ),
    ];

    var chart = charts.PieChart(
      series,
      animate: true,
      defaultRenderer: new charts.ArcRendererConfig(
        arcWidth: 60,
        arcRendererDecorators: [charts.ArcLabelDecorator()],
      ),
      behaviors: [
        charts.DatumLegend(
          position: charts.BehaviorPosition.bottom,
          horizontalFirst: false,
          showMeasures: true,
          // cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
          legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
          measureFormatter: (num value) {
            return value == null ? '-' : '$value casos';
          },
        )
      ],
    );

    var chartWidget = Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.zero,
      child: chart,
    );

    return SingleChildScrollView(
        scrollDirection: Axis.vertical, child: chartWidget);
  }
}
