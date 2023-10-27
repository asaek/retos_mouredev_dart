//  Enunciado: Escribe una función que calcule si un número dado es un número de Amstrong (o también llamado narcisista).
//  Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
import 'dart:math';

void main() {
  // print(solucion());
  print(solucion(numero: 9474));
}

String solucion({required int numero}) {
  final List<int> numeroList = separarEnDigitos(numero);
  int exponente = numeroList.length;

  int sumaPotencia = 0;
  int sumaDigito = 0;
  for (int i = 0; i < exponente; i++) {
    sumaDigito = numeroList[i];
    for (int ii = 0; ii < exponente - 1; ii++) {
      sumaDigito = sumaDigito * numeroList[i];
    }
    sumaPotencia = sumaPotencia + sumaDigito;
  }
  // for (int i = 0; i < exponente; i++) {
  //   sumaPotencia = sumaPotencia + pow(numeroList[i], exponente).toInt();
  // }

  if (numero == sumaPotencia) {
    return 'Si es un numero Armstrong';
  } else {
    return 'No es un numero Armstrong';
  }
}

List<int> separarEnDigitos(int numero) {
  List<int> listDigitos = [];
  while (numero > 0) {
    int diigito = numero % 10;
    listDigitos.insert(0, diigito);
    numero = numero ~/ 10;
  }
  return listDigitos;
}
