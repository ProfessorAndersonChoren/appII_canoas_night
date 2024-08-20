import 'dart:io';

void main() {
  print('Digite um frase, e de darei informações sobre ela');
  final String phrase = stdin.readLineSync()!.trim();

  // Computar os valores
  final int characters = phrase.length;
  final int words = phrase.split(" ").length;

  // Saída de dados
  print('A frase "$phrase" contém $characters caracteres');
  print('A frase "$phrase" contém $words palavras');
}
