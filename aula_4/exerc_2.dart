void main() {
  final List<int> numbers = [120, 4000, 56, 101, 258];

  // Pegar o maior número - Manual
  int major = numbers.first;
  for (int number in numbers) {
    if (number > major) major = number;
  }
  print(major);

  // Pegar o maior número - Simples
  numbers.sort();
  print(numbers.last);
}
