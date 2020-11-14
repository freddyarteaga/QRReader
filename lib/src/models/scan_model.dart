class ScanModel {
  ScanModel({
    this.id,
    this.tipo,
    this.valor,
  });

  int id;
  String tipo;
  String valor;

  // perite crear una nueva instancia de scanModel
  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  // retorna un objeto del mismo tipo
  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
