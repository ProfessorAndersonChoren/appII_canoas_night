import 'package:flutter/material.dart';
import 'package:organizeme/screens/shared/app_drawer.dart';
import 'package:organizeme/screens/tasks/components/task.dart';

class TasksPage extends StatelessWidget {
  TasksPage({super.key});

  final List<Task> tasks = [
    const Task(
      title: 'Ir ao mercado',
      category: 'Pessoal',
      hour: TimeOfDay(hour: 8, minute: 0),
    ),
    const Task(
      title: 'Consulta dermato',
      category: 'Saúde',
      hour: TimeOfDay(hour: 13, minute: 0),
    ),
    const Task(
      title: 'Buscar as crianças',
      category: 'Escola',
      hour: TimeOfDay(hour: 15, minute: 0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrganizeMe'),
      ),
      drawer: const AppDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Compromissos do dia',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return tasks[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
