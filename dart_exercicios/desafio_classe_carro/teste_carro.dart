import 'carro.dart';

main() {
  Carro car1 = new Carro(320);

  while (!car1.estaNoLimite()) {
    print("A velocidade atual é ${car1.acelerar()} Km/h");
  }

  print("O carro chegou no máximo de velocidade ${car1.velocidadeAtual} Km/h");

  while (!car1.estaNoLimite()) {
    print("A velocidade atual é ${car1.frear()} Km/h");
  }

  print("O carro parou com a velocidade de ${car1.velocidadeAtual} Km/h");
}
