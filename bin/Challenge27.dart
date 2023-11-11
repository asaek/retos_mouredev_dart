// * Reto #27
// * VECTORES ORTOGONALES
// * Fecha publicación enunciado: 07/07/22
// * Fecha publicación resolución: 11/07/22
// * Dificultad: FÁCIL
// *
// * Enunciado: Crea un programa que determine si dos vectores son ortogonales.
// * - Los dos array deben tener la misma longitud.
// * - Cada vector se podría representar como un array. Ejemplo: [1, -2]
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main() {
  print(isOrtogonalesFlecha(
      vector1: Vector(x: 2, y: 3), vector2: Vector(x: -3, y: 2)));
}

bool isOrtogonales({required Vector vector1, required Vector vector2}) {
  final resultado = (vector1.x * vector1.y) + (vector2.x * vector2.y);

  if (resultado != 0) {
    return false;
  } else {
    return true;
  }
}

bool isOrtogonalesFlecha({required Vector vector1, required Vector vector2}) =>
    (vector1.x * vector1.y) + (vector2.x * vector2.y) != 0 ? false : true;

class Vector {
  final int x, y;
  Vector({
    required this.x,
    required this.y,
  });
}
