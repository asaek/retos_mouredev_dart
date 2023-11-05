// * Reto #22
// * CONJUNTOS
// * Fecha publicación enunciado: 01/06/22
// * Fecha publicación resolución: 07/06/22
// * Dificultad: FÁCIL
// *
// * Enunciado: Crea una función que reciba dos array, un booleano y retorne un array.
// * - Si el booleano es verdadero buscará y retornará los elementos comunes de los dos array.
// * - Si el booleano es falso buscará y retornará los elementos no comunes de los dos array.
// * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main() {
  solucion(
      array1: [1, 2, 3, 3, 4], array2: [2, 2, 3, 3, 3, 4, 6], comunes: false);
}

List<int> solucion(
    {required List<int> array1,
    required List<int> array2,
    required bool comunes}) {
  final List<int> listArray1 = array1.toSet().toList();
  final List<int> listArray2 = array2.toSet().toList();
  final int length1 = listArray1.length;
  final int length2 = listArray2.length;

  // final Set<int> resultado = <int>{};
  List<int> resultado = [];

  for (int i = 0; i < length1; i++) {
    for (int ii = 0; ii < length2; ii++) {
      if (listArray1[i] == listArray2[ii] &&
          !resultado.contains(listArray2[ii])) {
        resultado.add(listArray2[ii]);
      }
    }
  }
  print(resultado);
  if (comunes) return resultado;

  listArray1.removeWhere((numero) => resultado.contains(numero));
  listArray2.removeWhere((numero) => resultado.contains(numero));
  // print(listArray1);
  // print(listArray2);

  resultado = List<int>.from(listArray1 + listArray2);

  // print(resultado);
  return resultado;
}
