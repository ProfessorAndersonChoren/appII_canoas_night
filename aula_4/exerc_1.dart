void main() {
  const List<String> contacts = [
    "José",
    "Maria Clara",
    "Joana",
    "Pablo",
    "Ana Maria"
  ];
  const name = "maria";
  List<String> filter = [];
  // Filtrar nomes por uma palavra - Manual
  for (String contact in contacts) {
    final auxContact = contact.toLowerCase();
    final auxName = name.toLowerCase();
    if (auxContact.contains(auxName)) {
      filter.add(contact);
    }
  }
  print(filter);

  // Filtrar nomes por uma palavra - Automático
  final newFilter = contacts.where((contact) => contact.contains(name)).toList();
  print(newFilter);
}
