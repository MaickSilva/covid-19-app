class CasesWorld {
  double totalCasos;
  double totalMortes;
  double totalCurados;
  String ultimaAtualizacao;

  CasesWorld(
      {this.totalCasos,
      this.totalMortes,
      this.totalCurados,
      this.ultimaAtualizacao});

  factory CasesWorld.fromJson(Map<String, dynamic> json) {
    return CasesWorld(
      totalCasos: json['totalCasos'],
      totalMortes: json['totalMortes'],
      totalCurados: json['totalCurados'],
      ultimaAtualizacao: json['ultimaAtualizacao']
    );
  }
}
