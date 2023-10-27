void main() {
  fizzbuzz();
}

fizzbuzz() {
  const List<int> multiplos = [3, 5, 15];
  for (int i = 1; i < 101; i++) {
    if ((i % multiplos[2]) == 0) {
      print('fizzbuzz');
    } else if ((i % multiplos[0]) == 0) {
      print('fizz');
    } else if ((i % multiplos[1]) == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
}
