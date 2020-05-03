import 'package:com/src/screens/cases_per_states_chart.dart';
import 'package:com/src/utils/colors.dart';
import 'src/screens/tabs_screen.dart';
import 'src/utils/main_routes.dart';
import 'package:flutter/material.dart';
import 'src/screens/cases_per_states.dart';

void main() async {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: createMaterialColor (Color(0xFF4864E6)),
      accentColor: Colors.white,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            button: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      AppRoutes.HOME: (ctx) => TabsScreen(),
      AppRoutes.CASES_PER_STATE_BRAZIL: (ctx) => BrazilCasesStateScreen(),
      AppRoutes.CASES_PER_STATE_CHARTS: (ctx) => CasesPerStateChart(),
    },
  ));
}
