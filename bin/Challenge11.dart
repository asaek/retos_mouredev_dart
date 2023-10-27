//  Enunciado: Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).
//  - out1 contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
//  - out2 contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.

void main(List<String> args) {
  // print(solucion(cadena1: 'brais', cadena2: 'moure'));
  print(solucion(cadena1: 'Me gusta Java', cadena2: 'Me gusta Kotlin'));
  // solucion(cadena1: 'brais', cadena2: 'moure');
  // solucion(cadena1: 'Me gusta Java', cadena2: 'Me gusta Kotlin');
}

String solucion({required String cadena1, required String cadena2}) {
  final List<String> listCadena1 =
      cadena1.toLowerCase().replaceAll(RegExp('[ ]'), '').split('');
  final List<String> listCadena2 =
      cadena2.toLowerCase().replaceAll(RegExp('[ ]'), '').split('');

  for (int i = 0; i < listCadena1.length; i++) {
    final int aBorrar = listCadena2.indexOf(listCadena1[i]);
    if (aBorrar != -1) {
      listCadena1.removeAt(i);
      listCadena2.removeAt(aBorrar);
    }
  }

  // print(listCadena1);
  // print(listCadena2);
  return '${listCadena1.join('')}, ${listCadena2.join('')}';
}
