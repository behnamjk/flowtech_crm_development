import 'package:flowtech_crm/classes/auth_class.dart';
import 'package:flowtech_crm/providers/auth_provider.dart';
import 'package:flowtech_crm/providers/projects_provider.dart';
import 'package:flowtech_crm/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final List<String> _tiles = [];
  final _projectDetails = <String>{};

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _tiles.add(_textController.text);
        _textController.clear();
      });
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.settings),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  auth.authData.username != null
                      ? 'welcome ${auth.authData.username}'
                      : 'Welcome Behnam Jafari',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Consumer<ProjectsProvider>(
          builder: (context, projectProvider, child) {
        return ListView.builder(
          itemCount: projectProvider.projectsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => context.go(
                  '/projectDetails/${projectProvider.projectsList[index].id}',
                  extra: projectProvider.projectsList[index].id),
              child: Card(
                child: ListTile(
                  leading: Container(
                    width: 100,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(2)),
                    child: Center(
                        child:
                            Text(projectProvider.projectsList[index].clientContractor!)),
                  ),
                  trailing:
                      Text(projectProvider.projectsList[index].komDate!.toString()),
                  title: Text(projectProvider.projectsList[index].deliveryPlace!),
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                alignment: Alignment.center,
                title: const Text('Add Project'),
                content: FormBuilder(
                    key: _formKey,
                    child: SizedBox(
                      width: 700,
                      height: 1000,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderTextField(
                                    decoration: const InputDecoration(
                                      hintText: 'Title',
                                      border: OutlineInputBorder(),
                                    ),
                                    name: 'title'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: FormBuilderTextField(
                                    decoration: const InputDecoration(
                                      hintText: 'Client Name',
                                      border: OutlineInputBorder(),
                                    ),
                                    name: 'clientName'),
                              ),
                            ],
                          ),
                         const Divider(height: 40,),
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderCheckbox(
                                  name: 'hydro',
                                  title: Text('Hydro Test'),
                                ),
                              ),
                              Expanded(
                                child: FormBuilderCheckbox(
                                  name: 'materialTest',
                                  title: Text('Material Test'),
                                ),
                              ),
                              Expanded(
                                child: FormBuilderCheckbox(
                                  name: 'finalBook',
                                  title: Text('Final Book Submission'),
                                ),
                              ),
                              Expanded(
                                child: FormBuilderCheckbox(
                                  name: 'cvTest',
                                  title: Text('CV Test'),
                              ),),
                               Expanded(
                                  child: FormBuilderCheckbox(
                                      name: 'functionalTest',
                                      title: Text('Functional Test'),),),
                              // Expanded(
                              //     child:
                              //         FormBuilderDateTimePicker(name: 'date'))
                            ],
                          )
                        ],
                      ),
                    )),
              );
            },
          );
        },
        tooltip: 'Add Tile',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: 'Clients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_score_outlined),
            label: 'Marketing',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}
