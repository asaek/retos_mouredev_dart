// * Reto #24
// * ITERATION MASTER
// * Fecha publicación enunciado: 13/06/22
// * Fecha publicación resolución: 20/06/22
// * Dificultad: FÁCIL
// *
// * Enunciado: Quiero contar del 1 al 100 de uno en uno (imprimiendo cada uno). ¿De cuántas maneras eres capaz de hacerlo? Crea el código para cada una de ellas.
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main(List<String> args) {
  solucion5ListGenerate();
}

void solucion() {
  for (int i = 1; i < 101; i++) {
    print(i);
  }
}

void solucion1({required int numero}) {
  if (numero < 101) {
    print(numero);
    return solucion1(numero: numero + 1);
  }
}

void solucion2recursiva({required int numero}) => numero < 101
    ? (() {
        print(numero);
        solucion2recursiva(numero: numero + 1);
      })()
    : null;

void solucion3While({required int numero}) {
  while (numero < 101) {
    print(numero);
    numero++;
  }
}

void solucion4DoWhile({required int numero}) {
  do {
    print(numero);
    numero++;
  } while (numero < 101);
}

void solucion5ListGenerate() {
  List.generate(101, (index) {
    print(index);
  });
}
