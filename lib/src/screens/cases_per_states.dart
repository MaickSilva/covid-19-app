import 'package:com/src/components/buildListView.dart';
import 'package:com/src/components/drawer/main_drawer.dart';
import 'package:com/src/components/loadingCircular.dart';
import 'package:com/src/components/loadingError.dart';
import 'package:com/src/models/case.dart';
import 'package:com/src/service/api.dart';
import 'package:flutter/material.dart';

class BrazilCasesStateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Casos por estado no Brasil",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
        future: getDataBrazil(endpoint: 'PortalMapa'),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: LoadingCircular());
            default:
              if (snapshot.hasError) {
                return LoadingError();
              } else {
                var cases = snapshot.data['results'] as List;
                List<Cases> dataCases =
                    cases.map((item) => Cases.fromJson(item)).toList();
                return BuildListViewStates(dataCases);
              }
          }
        },
      ),
    );
  }
}
