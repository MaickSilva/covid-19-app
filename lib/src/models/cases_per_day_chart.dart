class ChartCasesDay {
  final String mes;
  final int qtdConfirmado;
  final int qtdObitos;

  ChartCasesDay(
    this.mes,
    this.qtdConfirmado,
    this.qtdObitos,
  );

  factory ChartCasesDay.fromJson(Map<String, dynamic> map) {
    return ChartCasesDay(
      map['label'],
      map['qtd_confirmado'],
      map['qtd_obito'],
    );
  }

  @override
  String toString() {
    return '{${this.mes}, ${this.qtdConfirmado}, ${this.qtdObitos}}';
  }
}
