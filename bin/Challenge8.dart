void main() {
  resultado(numero: 5);
}

void resultado({required int numero}) {
  // double divicion = numero.toDouble();
  final List<int> numeroBinario = [];
  while (numero != 0) {
    numeroBinario.add((numero % 2).toInt());
    numero = (numero ~/ 2);
  }
  final List<int> numerosInvertidos = numeroBinario.reversed.toList();
  print(numerosInvertidos);
}
