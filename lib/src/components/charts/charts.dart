import 'package:com/src/models/cases_per_day_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CreateChart extends StatelessWidget {
  final List<ChartCasesDay> dataCases;

  CreateChart(this.dataCases);

  @override
  Widget build(BuildContext context) {
    var series = [
      charts.Series(
        domainFn: (ChartCasesDay clickData, _) => clickData.mes,
        measureFn: (ChartCasesDay clickData, _) => clickData.qtdConfirmado,
        id: 'Casos Confirmados',
        data: dataCases,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        labelAccessorFn: (ChartCasesDay casos, _) =>
            '${casos.qtdConfirmado.toString()}',
      ),
      charts.Series(
        domainFn: (ChartCasesDay clickData, _) => clickData.mes,
        measureFn: (ChartCasesDay clickData, _) => clickData.qtdObitos,
        id: 'Casos de Mortes',
        data: dataCases,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        labelAccessorFn: (ChartCasesDay casos, _) =>
            '${casos.qtdObitos.toString()}',
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
      vertical: false,
      flipVerticalAxis: true,
      barRendererDecorator: charts.BarLabelDecorator<String>(
        insideLabelStyleSpec: charts.TextStyleSpec(
          color: charts.MaterialPalette.white,
        ),
      ),
      behaviors: [charts.SeriesLegend()],
    );

    var chartWidget = Container(
      height: MediaQuery.of(context).size.height * 5,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: chart,
    );

    return SingleChildScrollView(
        scrollDirection: Axis.vertical, child: chartWidget);
  }
}
