import 'package:com/src/models/case.dart';
import 'package:flutter/material.dart';

class BuildListViewStates extends StatelessWidget {
  final List<Cases> dataCases;

  BuildListViewStates(this.dataCases);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataCases.length,
      itemBuilder: (context, index) {
        Cases cases = dataCases[index];
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
                          child: Text(
                            '${cases.name.toString()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Confirmados',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            Text(
                              '${cases.casesConfirmed.toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 2,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Mortes',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            Text(
                              '${cases.casesDeath.toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
