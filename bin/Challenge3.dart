void main() {
  solucion();
}

solucion() {
  for (int i = 2; i < 100; i++) {
    for (int ii = 2; ii <= i; ii++) {
      if ((i % ii) == 0) {
        if (i != ii) {
          break;
        } else {
          print(i);
        }
      }
    }
  }
}
