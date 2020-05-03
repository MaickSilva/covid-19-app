class CasesPerRegion {
  final String name;
  final String percent;
  final int qtd;
  final String barColor;

  CasesPerRegion(
    this.name,
    this.percent,
    this.qtd,
    this.barColor
  );

  factory CasesPerRegion.fromJson(Map<String, dynamic> map) {
    return CasesPerRegion(
      map['nome'],
      map['percent'],
      map['qtd'],
      map['color']
    );
  }

  @override
  String toString() {
    return '{${this.name}, ${this.percent}, ${this.qtd}, ${this.barColor}}';
  }
}
