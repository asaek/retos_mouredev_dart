// * Reto #26
// * CUADRADO Y TRIÁNGULO 2D
// * Fecha publicación enunciado: 27/06/22
// * Fecha publicación resolución: 07/07/22
// * Dificultad: FÁCIL
// *
// * Enunciado: Crea un programa que dibuje un cuadrado o un triángulo con asteriscos "*".
// * - Indicaremos el tamaño del lado y si la figura a dibujar es una u otra.
// * - EXTRA: ¿Eres capaz de dibujar más figuras?
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

void main() {
  triangulo(tamano: 4);
}

void triangulo({required int tamano}) {
  for (int i = 0; i < tamano - 1; i++) {
    print(trianguloSeccion2D(tamano: tamano, seccion: i));
  }
}

String cuadradoSeccion2D({required int tamano, required int seccion}) {
  String printSeccion = '';
  if (seccion == 0 || seccion + 1 == tamano) {
    for (int i = 0; i < tamano; i++) {
      printSeccion += '-';
    }
  } else {
    final int espacios = tamano - 2;
    printSeccion += '|';
    for (int i = 0; i < espacios; i++) {
      printSeccion += ' ';
    }
    printSeccion += '|';
  }

  return printSeccion;
}

String trianguloSeccion2D({required int tamano, required int seccion}) {
  String seccion2D = '';
  if (seccion == 0) {
    for (int i = 0; i < tamano - 2; i++) {
      seccion2D += ' ';
    }
    seccion2D += '/\\';
  } else if (seccion == tamano - 2) {
    seccion2D += '/';
    final espacios = tamano - 2;
    for (int i = 0; i < espacios; i++) {
      seccion2D += '_';
    }
    seccion2D += '\\';
  } else {
    final int espacioAntes = tamano - (tamano - seccion);
    // print(espacioAntes);
    for (int i = 0; i < espacioAntes; i++) {
      seccion2D += ' ';
    }
    seccion2D += '/';
    for (int i = 0; i < seccion; i++) {
      seccion2D += ' ';
    }
    seccion2D += '\\';
  }
  return seccion2D;
}
