import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/repository/contact_repository.dart';
import 'package:agenda_de_contatos/screens/home/components/list_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    List<Contact> contacts = [];
    return FutureBuilder(
      future: ContactRepository.findAll(),
      builder: (_, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          widget = const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData || snapshot.hasError) {
          widget = const Center(
            child: Text('Não existem contatos cadastrados!!!'),
          );
        }
        if (snapshot.hasData) {
          contacts = snapshot.data!;
        }
        widget = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            itemCount: contacts.length,
            separatorBuilder: (_, index) => SizedBox(height: 8),
            itemBuilder: (_, index) => ListItem(
              contact: contacts[index],
            ),
          ),
        );

        return Scaffold(
          appBar: AppBar(
            title: const Text("Meus contatos"),
          ),
          body: widget,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/new");
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
