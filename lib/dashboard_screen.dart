import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  List<String> _tiles = [];

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
          return ListTile(
            title: Text(_tiles[index]),
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
                content: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      labelText: 'Enter text',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                actions: [
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