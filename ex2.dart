class Animal {
  String nome;
  String cor;
  String altura;
  double peso;

  void animalcomeu(bool st_al)
  {
    if (st_al == true){
      print("O animal $nome já comeu");
    }else{
      print("O animal $nome está com fome");
    }  
  }

  void animaldormiu(bool st_d){
    if (st_d == true){
      print("O animal $nome já dormiu");
    }else{
      print("O animal $nome não dormiu");
    }  
  }
}
