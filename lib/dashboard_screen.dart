import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView.builder(
        itemCount: _tiles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              
              leading: Text('Created by : Azade Ghasemi'),
              title: Text(_tiles[index]),
            ),
          );
        },
      ),
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
    );
  }
}