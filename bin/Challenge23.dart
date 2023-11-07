// * Reto #23
// * MÁXIMO COMÚN DIVISOR Y MÍNIMO COMÚN MÚLTIPLO
// * Fecha publicación enunciado: 07/06/22
// * Fecha publicación resolución: 13/06/22
// * Dificultad: MEDIA
// *
// * Enunciado: Crea dos funciones, una que calcule el máximo común divisor (MCD) y otra que calcule el mínimo común múltiplo (mcm) de dos números enteros.
// * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main() {
  // mcd(numero1: 48, numero2: 18);
  print(
      "El Minimo Comun Multiplo es: ${mcm(mcd: mcd(numero1: 48, numero2: 18), numero1: 48, numero2: 18)}");
}

int mcd({required int numero1, required int numero2}) {
  int? residuo;
  while (residuo != 0) {
    residuo = numero1 % numero2;
    numero1 = numero2;
    numero2 = residuo;
    // print('Numero1: $numero1 Numero2: $numero2 Residuo:$residuo');
  }
  print('El Maximo Comun divisor es: $numero1');
  return numero1;
}

int mcm({required int mcd, required int numero1, required int numero2}) =>
    (((numero1 * numero2) / mcd) ~/ 1);
