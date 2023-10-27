// Enunciado: Crea una función que calcule y retorne cuántos días hay entre dos cadenas de texto que representen fechas.
// - Una cadena de texto que representa una fecha tiene el formato "dd/MM/yyyy".
// - La función recibirá dos String y retornará un Int.
// - La diferencia en días será absoluta (no importa el orden de las fechas).
// - Si una de las dos cadenas de texto no representa una fecha correcta se lanzará una excepción.

void main() {
  print(solucion(
    fechaInicio: '15/01/2023',
    fechaTerminacion: '16/01/2023',
  ));
}

String solucion(
    {required String fechaInicio, required String fechaTerminacion}) {
  final List<String> listInicial = fechaInicio.split('/');
  final List<String> listTerminacion = fechaTerminacion.split('/');
  final int inicialLength = listInicial.length;
  final int terminacionLength = listTerminacion.length;
  int totalDias = 0;
  if (inicialLength != 3 || terminacionLength != 3) {
    return 'La fecha no es correcta';
  }
  final List<int> intListInicial = List.generate(inicialLength, (index) => 0);
  final List<int> intListFinal = List.generate(inicialLength, (index) => 0);
  int totalInicial = 0;
  int totalTerminacion = 0;
  for (int i = 0; i < inicialLength; i++) {
    intListInicial[i] = parsearStringtoInt(numero1: listInicial[i]);
    intListFinal[i] = parsearStringtoInt(numero1: listTerminacion[i]);
    totalInicial = totalInicial + intListInicial[i];
    totalTerminacion = totalTerminacion + intListFinal[i];
  }
  if (totalInicial > totalTerminacion) return 'Rango incorrecto';

  totalDias = sumaDias(
    diaInicial: intListInicial[0],
    diaFinal: intListFinal[0],
    mesInicial: intListInicial[1],
    mesFinal: intListFinal[1],
  );

  totalDias = totalDias +
      sumaMeses(mesInicial: intListInicial[1], mesFinal: intListFinal[1]);
  totalDias = totalDias +
      sumaAnos(anoInicial: intListInicial[2], anoFinal: intListFinal[2]);

  return totalDias.toString();
}

int sumaDias(
    {required int diaInicial,
    required int diaFinal,
    required int mesInicial,
    required int mesFinal}) {
  const Map<int, int> mesesMap = {
    01: 31,
    02: 28,
    03: 31,
    04: 30,
    05: 31,
    06: 30,
    07: 31,
    08: 31,
    09: 30,
    10: 31,
    11: 30,
    12: 31,
  };
  // print(mesesMap[mesInicial]!);
  if (mesInicial == mesFinal) {
    return diaFinal - diaInicial;
  }
  return (mesesMap[mesInicial]! - diaInicial) + diaFinal;
}

int sumaMeses({required int mesInicial, required int mesFinal}) {
  const Map<int, int> mesesMap = {
    01: 31,
    02: 28,
    03: 31,
    04: 30,
    05: 31,
    06: 30,
    07: 31,
    08: 31,
    09: 30,
    10: 31,
    11: 30,
    12: 31,
  };
  int diasContadosMes = 0;
  for (int i = mesInicial + 1; i < mesFinal; i++) {
    diasContadosMes = diasContadosMes + mesesMap[i]!;
  }
  // print(diasContadosMes);
  return diasContadosMes;
}

int sumaAnos({required int anoInicial, required int anoFinal}) =>
    ((anoFinal - anoInicial) * 365);

int parsearStringtoInt({required String numero1}) {
  try {
    final int parseNumero = int.parse(numero1);
    return parseNumero;
  } catch (e) {
    print('La fecha no es correcta');
    return 0;
  }
}
