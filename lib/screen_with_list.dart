import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackoverflow_provider/item.dart';
import 'package:stackoverflow_provider/my_app.dart';
import 'package:stackoverflow_provider/screen_with_form_field.dart';

class ScreenWithList extends StatefulWidget {
  @override
  _ScreenWithListState createState() => _ScreenWithListState();
}

class _ScreenWithListState extends State<ScreenWithList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Consumer<ItemListNotifier>(
        builder: (context, list, child) {

          print('Rebuilt');
          return ListView.builder(

              itemCount: list?.tags?.length ?? 0,
              itemBuilder: (context, index) {
            return Text(list?.tags[index]?.name ?? '');
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_forward,
          ),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ScreenWithFormField()))),
    );
  }
}
