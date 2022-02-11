import 'package:flutter/material.dart';

List<String> getListElements(int i) {
  var items = List<String>.generate(i, (counter) => "Problem ${counter + 1}");
  return items;
}

Widget getListView(int counter) {
  var listItems = getListElements(counter);
  var listView = ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        if(index.isEven) {
          return ListTile(
            leading: const Icon(Icons.arrow_right),
            title: Text(listItems[index]),
            onTap: () {
              final snackBar = SnackBar(
                content: Text('${listItems[index]} is selected'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        }
        else{
          return ListTile(
            leading: const Icon(Icons.arrow_right),
            title: Text(listItems[index]),
            trailing: const Icon(Icons.star),
            onTap: () {
              final snackBar = SnackBar(
                content: Text('${listItems[index]} is my favorite'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        }
      }
  );
  return listView;
}