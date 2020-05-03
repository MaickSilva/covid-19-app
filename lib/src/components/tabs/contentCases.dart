import 'package:com/src/components/card/info/card.dart';
import 'package:com/src/components/card/info/card_att.dart';
import 'package:flutter/material.dart';

class RenderCardList extends StatelessWidget {
  final AsyncSnapshot<dynamic> snapshot;
  final String totalCasesLabel;
  final String recoveredCasesLabel;
  final String hospitalizedCasesLabel;
  final String deathCasesLabel;

  RenderCardList({
    this.snapshot,
    this.totalCasesLabel,
    this.recoveredCasesLabel,
    this.hospitalizedCasesLabel,
    this.deathCasesLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            MainCardDateAtt(snapshot.data.ultimaAtualizacao),
            MainCardItem(
              totalCasesLabel,
              snapshot.data.totalCasos,
              Colors.blue,
            ),
            MainCardItem(
              recoveredCasesLabel,
              snapshot.data.totalCurados,
              Colors.greenAccent,
            ),
            MainCardItem(
              hospitalizedCasesLabel,
              (snapshot.data.totalCasos -
                  (snapshot.data.totalMortes + snapshot.data.totalCurados)),
              Colors.orange,
            ),
            MainCardItem(
              deathCasesLabel,
              snapshot.data.totalMortes,
              Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
