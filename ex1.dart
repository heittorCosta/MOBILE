
class Alimento {
  String sabor;
  String nome;
  String cor;
  double peso;

  Alimento(this.sabor, this.nome, this.cor, this.peso);
}

class Fruta extends Alimento {
  int diasdecolheita;

  Fruta(String sabor, String nome, String cor, double peso, this.diasdecolheita)
      : super(sabor, nome, cor, peso);

  void estaMadura(int qtd_dias) {
    if (qtd_dias >= diasdecolheita) {
      print("A fruta $nome está madura");
    } else { 
      print("A fruta $nome não está madura");
    }
  }
}

class Legumes {
  String sabor;
  String nome;
  String cor;
  double peso;
  bool? isprecisaCozinhar;

  Legumes(this.sabor, this.nome, this.cor, this.peso, {this.isprecisaCozinhar});

  void precisaCozinhar(bool isprecisaCozinhar) {
    if (isprecisaCozinhar == true) {
      print("O $nome está pronto");
    } else {
      print("O $nome não precisa cozinhar");
    }
  }
}

void main() {
  Fruta pera = Fruta("Doce", "Pera", "Verde", 100, 20);

  pera.estaMadura(30);

  Legumes Beterraba =
      Legumes("Amargo", "Beterraba", "Roxo", 50, isprecisaCozinhar: true);
  Beterraba.precisaCozinhar(true);

  Fruta uva = Fruta("Doce", "Uva", "Roxa", 100, 20);

  uva.estaMadura(20);
}
