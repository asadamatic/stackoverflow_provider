
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackoverflow_provider/item.dart';
import 'package:stackoverflow_provider/screen_with_form_field.dart';
import 'package:stackoverflow_provider/screen_with_list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemListNotifier>(
        create: (context) => ItemListNotifier(),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: ScreenWithList(),
    )
    );
  }
}


class ItemListNotifier extends ChangeNotifier{

  List<Item> tags = <Item>[
    Item(
      "name",
      Colors.red,
    ),
    Item(
      "Cooking",
      Colors.red,
    ),
    Item(
      "Sport",
      Colors.red,
    ),
  ];

  void add(Item item){

    tags.add(item);
    notifyListeners();
  }
}