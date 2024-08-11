/*
 * Crea un programa se encargue de transformar un número binario
 * a decimal sin utilizar funciones propias del lenguaje que
 * lo hagan directamente.
 */

void main() {
  print(solucion(binario: '10110'));
}

int solucion({required String binario}) {
  final List<String> listBunarios = binario.split('').reversed.toList();
  int decimal = 0;
  int apuntador = 1;
  for (String element in listBunarios) {
    if (element == '1') {
      decimal = decimal + apuntador;
    }
    apuntador = apuntador * 2;
  }

  return decimal;
}
