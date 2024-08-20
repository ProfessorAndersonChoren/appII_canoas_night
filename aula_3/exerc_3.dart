import 'dart:io';

void main() {
  print("Digite uma frase");
  final String phrase = stdin.readLineSync()!;
  print("Digite a palavra que você procura");
  final String search = stdin.readLineSync()!;
  print("Digite a palavra para a qual quer substituir");
  final String replace = stdin.readLineSync()!;

  // Substituir as palavras
  var result = phrase.replaceAll(search.toLowerCase(), replace.toLowerCase());
  result = result.replaceAll(search.toUpperCase(), replace.toUpperCase());

  print(result);
}
