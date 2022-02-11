import 'package:flutter/material.dart';

List<String> getListElements() {
  var items = List<String>.generate(30, (counter) => "Problem ${counter+1}");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      if(index.isEven) {
        return ListTile(
          leading: const Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: () {
            ScaffoldMessenger.of(context).
            showSnackBar(SnackBar(content: Text('${listItems[index]} is selected')));
          },
        );
      }
      else{
        return ListTile(
          leading: const Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          trailing: const Icon(Icons.star),
          onTap: () {
            ScaffoldMessenger.of(context).
            showSnackBar(SnackBar(content: Text('${listItems[index]} is my favorite')));
          },
        );
      }
    }
  );
  return listView;
}