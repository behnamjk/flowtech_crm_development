import 'package:flowtech_crm/classes/auth_class.dart';
import 'package:flowtech_crm/providers/auth_provider.dart';
import 'package:flowtech_crm/providers/projects_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          TextButton(onPressed: (){}, child: Icon(Icons.settings),),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(child: Icon(Icons.person),),
            SizedBox(width: 10,),
            Text(auth.authData.username!=null ? 'welcome ${auth.authData.username}' : 'Welcome Behnam Jafari',style: TextStyle(fontSize: 12),),
            Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}' , style: TextStyle(fontSize: 12),), 
          ],
        ),  
      ),
      body: Consumer<ProjectsProvider>(builder: (context, projectProvider, child) {
        return ListView.builder(
          itemCount: projectProvider.projectsList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                 borderRadius: BorderRadius.circular(2)
                ),  
                child:  Center(child: Text(projectProvider.projectsList[index].author!)),),
                trailing: Text(projectProvider.projectsList[index].createdAt!),
                
                title: Text(projectProvider.projectsList[index].clientName!),
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
                
                title: const Text('Add Tile'),
                content: Container(
                  width: 700,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _textController,
                                decoration: const InputDecoration(
                                  labelText: 'Project Name',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the project name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Client Name',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the client name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Project Start Date',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the project start date';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Project End Date',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the project end date';
                                    
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Project Status',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the project status';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Project Budget',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the project budget';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          minLines: 5,
                          maxLines: 6,
                          decoration: const InputDecoration(
                            labelText: 'Project Description',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the project description';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: _submitForm,
                              child: const Text('Submit'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}