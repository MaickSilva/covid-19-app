import 'dart:convert';

class CasesPerStateChart {
  String name;
  int casesConfirmed;
  int casesDeath;

  CasesPerStateChart(this.name, this.casesConfirmed, this.casesDeath);

  factory CasesPerStateChart.fromJson(dynamic map) {
    return CasesPerStateChart(map['nome'] as String, map['qtd_confirmado'] as int,  map['qtd_obito'] as int);
  }

  List<CasesPerStateChart> caseFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<CasesPerStateChart>.from(data.map((item) => CasesPerStateChart.fromJson(item)));
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.casesConfirmed}, ${this.casesDeath} }';
  }
}