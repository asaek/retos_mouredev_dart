//  * Reto #19
//  * CONVERSOR TIEMPO
//  * Fecha publicación enunciado: 09/05/22
//  * Fecha publicación resolución: 16/05/22
//  * Dificultad: FACIL
//  *
//  * Enunciado: Crea una función que reciba días, horas, minutos y segundos (como enteros) y retorne su resultado en milisegundos.
//  *
//  * Información adicional:
//  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
//  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
//  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
//  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main() {
  solucion(
    days: 1,
    hours: 1,
    minutes: 1,
    seconds: 1,
  );
}

solucion({
  int? days,
  int? hours,
  int? minutes,
  int? seconds,
}) {
  int totalMilisegundos = 0;
  if (days != null) {
    totalMilisegundos = 86400000 * days;
  }
  if (hours != null) {
    totalMilisegundos = totalMilisegundos + (3600000 * hours);
  }
  if (minutes != null) {
    totalMilisegundos = totalMilisegundos + (60000 * minutes);
  }
  if (seconds != null) {
    totalMilisegundos = totalMilisegundos + (1000 * seconds);
  }
  print(totalMilisegundos);
}
