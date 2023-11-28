/*
 * Reto #28
 * MÁQUINA EXPENDEDORA
 * Fecha publicación enunciado: 11/07/22
 * Fecha publicación resolución: 18/07/22
 * Dificultad: MEDIA
 *
 * Enunciado: Simula el funcionamiento de una máquina expendedora creando una operación
 * que reciba dinero (array de monedas) y un número que indique la selección del producto.
 * - El programa retornará el nombre del producto y un array con el dinero de vuelta (con el menor
 *   número de monedas).
 * - Si el dinero es insuficiente o el número de producto no existe, deberá indicarse con un mensaje
 *   y retornar todas las monedas.≠
 * - Si no hay dinero de vuelta, el array se retornará vacío.
 * - Para que resulte más simple, trabajaremos en céntimos con monedas de 5, 10, 50, 100 y 200.
 * - Debemos controlar que las monedas enviadas estén dentro de las soportadas.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// 1 to Pair("Agua", 50),
// 2 to Pair("Coca-Cola", 100),
// 4 to Pair("Cerveza", 155),
// 5 to Pair("Pizza", 200),
// 10 to Pair("Donut", 75)

import 'dart:io';

void main() {
  // const List<int> tiposMonedas = [
  //   5,
  //   10,
  //   50,
  //   100,
  //   200,
  // ];
  final Map<int, int> productos = {
    1: 50,
    2: 100,
    3: 155,
    4: 200,
    5: 75,
  };
  const List<String> nombresProductos = [
    'Agua',
    'Coca-Cola',
    'Cerveza',
    'Pizza',
    'Donut',
  ];

  bienvenidad();
  final int indexProducto = seleccionProducto();

  final List<int> cambio =
      recepcionDinero(costo: productos[indexProducto + 1]!);

  print(
      'TU producto fue: ${nombresProductos[indexProducto]} y tu cambio es $cambio');
}

int seleccionProducto() {
  final Map<int, int> productos = {
    1: 50,
    2: 100,
    3: 155,
    4: 200,
    5: 75,
  };
  const List<String> nombresProductos = [
    'Agua',
    'Coca-Cola',
    'Cerveza',
    'Pizza',
    'Donut',
  ];
  int? inputParceado;
  print('Este es el catalogo Menu:');
  int index = 0;
  for (MapEntry<int, int> producto in productos.entries) {
    print(
        '${producto.key}. ${nombresProductos[index]}, precio: ${producto.value}');
    index += 1;
  }
  print('Selecciona el producto deseado:');
  final String? input = stdin.readLineSync();
  do {
    if (input != null) {
      inputParceado = int.tryParse(input);
      if (inputParceado != null) {
        inputParceado = inputParceado - 1;
        print('Producto Seleccionad: ${nombresProductos[inputParceado]}');
      } else {
        print('Error no escribiste un numero! :v');
      }
    }
  } while (input == null);
  return inputParceado!;
}

void bienvenidad() {
  print('Bienvenido a la máquina expendedora');
  print('Por favor, introduce el dinero que vas a introducir');
}

List<int> recepcionDinero({required int costo}) {
  const List<int> tiposMonedas = [
    5,
    10,
    50,
    100,
    200,
  ];

  bool salir = false;
  int totalPagado = 0;
  final List<int> cambio = [];

  print('Paga $costo, Perra. \n Para salir escribe "q" ');

  while (costo > totalPagado || salir == true) {
    final String? input = stdin.readLineSync();
    if (input != null) {
      if (input == 'q') {
        salir = true;
        break;
      } else {
        final int? inputParceado = int.tryParse(input);
        if (inputParceado != null) {
          for (int moneda in tiposMonedas) {
            if (moneda == inputParceado) {
              totalPagado += inputParceado;
              // pago.add(inputParceado);
              // print('$moneda   -    $inputParceado');
              break;
            }
          }
        } else {
          print('Eso no es una moneda. :v-<');
        }
      }
    } else {
      print('Escribe correctamente :v');
    }
    // print('Precio $costo -- pagado: $totalPagado');
  }

  //! Cambio
  if (costo < totalPagado) {
    int cambioTotal = totalPagado - costo;
    for (int i = tiposMonedas.length - 1; i >= 0; i--) {
      // print('$cambioTotal  -- ${tiposMonedas[i]}');
      if (cambioTotal > tiposMonedas[i]) {
        while (cambioTotal > tiposMonedas[i]) {
          cambioTotal -= tiposMonedas[i];
          cambio.add(tiposMonedas[i]);
          // print(cambioTotal);
        }
      }
    }
  }
  return cambio;
}
