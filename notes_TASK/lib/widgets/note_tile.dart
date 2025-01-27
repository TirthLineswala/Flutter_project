import 'package:flutter/material.dart';

class NoteTile extends StatelessWidget {
  final String title;
  final String description;
  final DateTime dateTime;
  final VoidCallback deleteCallback;

  NoteTile({
    required this.title,
    required this.description,
    required this.dateTime,
    required this.deleteCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: deleteCallback,
        color: Colors.red,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(title),
            content: Text(description),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
