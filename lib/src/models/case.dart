import 'dart:convert';

class Cases {
  String name;
  int casesConfirmed;
  int casesDeath;

  Cases(this.name, this.casesConfirmed, this.casesDeath);

  factory Cases.fromJson(dynamic map) {
    return Cases(map['nome'] as String, map['qtd_confirmado'] as int,  map['qtd_obito'] as int);
  }

  List<Cases> caseFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<Cases>.from(data.map((item) => Cases.fromJson(item)));
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.casesConfirmed}, ${this.casesDeath} }';
  }
}