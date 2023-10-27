// Enunciado: Escribe una función que calcule y retorne el factorial de un número dado de forma recursiva.
void main() {
  print(solucion(n: 5));
}

int solucion({required int n}) {
  if (n <= 1) return 1;
  return n * solucion(n: n - 1);
}




// int solucion({required int n}) {
//   if (n <= 1) return 1;
//   for (int i = n - 1; i > 0; i--) {
//     n = n * i;
//   }
//   return n;
// }
