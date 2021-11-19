import 'package:flutter/material.dart';

class DropdownMenuDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu Themed Demo'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Item 1'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.anchor),
                  title: Text('Item 2'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Item 3'),
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(child: Text('Item A')),
              const PopupMenuItem(child: Text('Item B')),
            ],
          ),
        ],
      ),
      body: Center(),
    );
  }
}
