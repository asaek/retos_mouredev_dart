void main() {
  solucion();
}

void solucion() {
  int uno = 0;
  int dos = 0;
  for (int i = 0; i < 50; i++) {
    if (i == 1) {
      dos = 1;
    }
    final anterior = uno;
    uno = dos;
    dos = dos + anterior;
    print(uno);
  }
}
