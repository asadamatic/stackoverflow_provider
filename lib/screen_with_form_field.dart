import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackoverflow_provider/item.dart';
import 'package:stackoverflow_provider/my_app.dart';

class ScreenWithFormField extends StatefulWidget {
  @override
  _ScreenWithFormFieldState createState() => _ScreenWithFormFieldState();
}

class _ScreenWithFormFieldState extends State<ScreenWithFormField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextFormField(
          controller: controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Provider.of<ItemListNotifier>(context, listen: false).add(Item(controller.text.trim(), Colors.red)),
      ),
    );
  }
}
