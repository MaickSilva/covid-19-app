class CasesBrazil {
  double totalCasos;
  double totalMortes;
  double totalCurados;
  String ultimaAtualizacao;

  CasesBrazil(
      {this.totalCasos,
      this.totalMortes,
      this.totalCurados,
      this.ultimaAtualizacao});

  factory CasesBrazil.fromJson(Map<String, dynamic> json) {
    return CasesBrazil(
      totalCasos: json['paises']['Brazil']['totalCasos'],
      totalMortes: json['paises']['Brazil']['totalMortes'],
      totalCurados: json['paises']['Brazil']['totalCurados'],
      ultimaAtualizacao: json['ultimaAtualizacao']
    );
  }
}
