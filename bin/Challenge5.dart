import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;

Future<void> main() async {
  final imageUrl =
      'https://w.wallhaven.cc/full/jx/wallhaven-jxd1x5.jpg'; // Reemplaza esto con tu URL.

  // Descargar la imagen de internet.
  final response = await http.get(Uri.parse(imageUrl));

  if (response.statusCode == 200) {
    // Decodifica la imagen usando el paquete 'image'.
    img.Image? image = img.decodeImage(Uint8List.fromList(response.bodyBytes));

    if (image != null) {
      print('Ancho de la imagen: ${image.width}');
      print('Alto de la imagen: ${image.height}');
      print(obtenerRelacionAspecto(width: image.width, height: image.height));
      // // Si quieres acceder a los píxeles de la imagen:
      // for (int y = 0; y < image.height; y++) {
      //   for (int x = 0; x < image.width; x++) {
      //     img.Pixel pixel = image.getPixel(x, y);
      //     // Haz lo que quieras con el pixel (por ejemplo, extraer sus componentes RGB).
      //   }
      // }
    }
  } else {
    print('Error al descargar la imagen: ${response.statusCode}');
  }
}

int comunDenominador({required int width, required int height}) {
  while (height != 0) {
    int t = height;
    height = width % height;
    width = t;
  }
  return width;
}

String obtenerRelacionAspecto({required int width, required int height}) {
  int divisor = comunDenominador(width: width, height: height);
  return "${width ~/ divisor}:${height ~/ divisor}";
}
